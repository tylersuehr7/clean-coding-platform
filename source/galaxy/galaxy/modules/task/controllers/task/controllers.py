from uuid import UUID

from django.db.models import QuerySet
from drf_spectacular.utils import extend_schema, inline_serializer
from rest_framework import status, serializers
from rest_framework.pagination import PageNumberPagination
from rest_framework.parsers import JSONParser
from rest_framework.permissions import IsAuthenticated
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from galaxy.app_injector import injection
from galaxy.modules.account.models import Account
from galaxy.modules.account.permissions.account.account_permissions_service import IAccountPermissionsService
from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.task.controllers.task.requests.create_task_request import CreateTaskRequest
from galaxy.modules.task.controllers.task.requests.list_tasks_for_account_request import ListTasksForAccountRequest
from galaxy.modules.task.controllers.task.requests.share_task_request import ShareTaskRequest
from galaxy.modules.task.controllers.task.requests.unshare_task_request import UnshareTaskRequest
from galaxy.modules.task.controllers.task.requests.update_task_request import UpdateTaskRequest
from galaxy.modules.task.models import Task
from galaxy.modules.task.permissions.task.task_permissions_service import ITaskPermissionsService
from galaxy.modules.task.serializers.task_serializer import TaskSerializer
from galaxy.modules.task.services.task.task_service import ITaskService
from galaxy.modules.task.services.task.task_service_params import (
    CreateTaskParams, UpdateTaskParams, ShareTaskParams,
    UnshareTaskParams
)


class ListOrCreateTasksForAccountController(APIView):
    parser_classes = [JSONParser]
    permission_classes = [IsAuthenticated]
    paginator = PageNumberPagination()

    account_service = injection.get(IAccountService)
    account_permissions_service = injection.get(IAccountPermissionsService)
    task_service = injection.get(ITaskService)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.paginator.page_size_query_param = "limit"

    @extend_schema(
        tags=["Task"],
        operation_id="list_tasks_for_account",
        parameters=[ListTasksForAccountRequest],
        request=inline_serializer(name="EmptyRequest", fields={}),
        responses={200: inline_serializer(
            name="ListTasksForAccountResponse",
            fields={
                "next": serializers.CharField(allow_null=True),
                "prev": serializers.CharField(allow_null=True),
                "count": serializers.IntegerField(),
                "results": TaskSerializer(many=True),
            },
        )},
    )
    def get(self, request: Request, account_id: UUID) -> Response:
        account: Account = self.account_service.get_account_by_id(account_id)
        self.account_permissions_service.assert_account_can_read_account(request.user, account)

        tasks: QuerySet[Task] = self.task_service.search_tasks_for_account(account)
        tasks = self.paginator.paginate_queryset(tasks, request, view=self)

        return self.paginator.get_paginated_response(TaskSerializer(tasks, many=True).data)

    @extend_schema(
        tags=["Task"],
        operation_id="create_task_for_account",
        parameters=[],
        request=CreateTaskRequest,
        responses={201: inline_serializer(
            name="CreateTaskForAccountResponse",
            fields={
                "task": TaskSerializer(),
            },
        )},
    )
    def post(self, request: Request, account_id: UUID) -> Response:
        params: CreateTaskParams = CreateTaskRequest.parse(request, {"account_id": account_id})
        self.account_permissions_service.assert_account_can_read_account(request.user, params.owner)

        task: Task = self.task_service.create_task(params)

        return Response({
            "task": TaskSerializer(task).data,
        }, status=status.HTTP_201_CREATED)


class GetOrUpdateOrDeleteTaskController(APIView):
    parser_classes = [JSONParser]
    permission_classes = [IsAuthenticated]

    task_service = injection.get(ITaskService)
    task_permissions_service = injection.get(ITaskPermissionsService)

    @extend_schema(
        tags=["Task"],
        operation_id="get_task",
        parameters=[],
        request=inline_serializer(name="EmptyRequest", fields={}),
        responses={200: inline_serializer(
            name="GetTaskResponse",
            fields={
                "task": TaskSerializer(),
            },
        )},
    )
    def get(self, request: Request, task_id: UUID) -> Response:
        task: Task = self.task_service.get_task_by_id(task_id)
        self.task_permissions_service.assert_account_can_read_task(request.user, task)
        return Response({
            "task": TaskSerializer(task).data,
        }, status=status.HTTP_200_OK)

    @extend_schema(
        tags=["Task"],
        operation_id="update_task",
        parameters=[],
        request=UpdateTaskRequest,
        responses={200: inline_serializer(
            name="UpdateTaskResponse",
            fields={
                "task": TaskSerializer(),
            },
        )},
    )
    def put(self, request: Request, task_id: UUID) -> Response:
        params: UpdateTaskParams = UpdateTaskRequest.parse(request, {"task_id": task_id})
        self.task_permissions_service.assert_account_can_read_task(request.user, params.task)

        task: Task = self.task_service.update_task(params)

        return Response({
            "task": TaskSerializer(task).data,
        }, status=status.HTTP_200_OK)

    @extend_schema(
        tags=["Task"],
        operation_id="delete_task",
        parameters=[],
        request=inline_serializer(name="EmptyRequest", fields={}),
        responses={200: inline_serializer(name="EmptyResponse", fields={})},
    )
    def delete(self, request: Request, task_id: UUID) -> Response:
        task: Task = self.task_service.get_task_by_id(task_id)
        self.task_permissions_service.assert_account_can_delete_task(request.user, task)

        self.task_service.delete_task(task)

        return Response(status=status.HTTP_204_NO_CONTENT)


class ShareTaskController(APIView):
    parser_classes = [JSONParser]
    permission_classes = [IsAuthenticated]

    task_service = injection.get(ITaskService)
    task_permissions_service = injection.get(ITaskPermissionsService)

    @extend_schema(
        tags=["Task"],
        operation_id="share_task",
        parameters=[],
        request=ShareTaskRequest,
        responses={200: inline_serializer(name="EmptyResponse", fields={})},
    )
    def post(self, request: Request, task_id: UUID) -> Response:
        params: ShareTaskParams = ShareTaskRequest.parse(request, {"task_id": task_id})
        self.task_permissions_service.assert_account_can_share_task(request.user, params.task)

        self.task_service.share_task(params)

        return Response(status=status.HTTP_204_NO_CONTENT)


class UnshareTaskController(APIView):
    parser_classes = [JSONParser]
    permission_classes = [IsAuthenticated]

    task_service = injection.get(ITaskService)
    task_permissions_service = injection.get(ITaskPermissionsService)

    @extend_schema(
        tags=["Task"],
        operation_id="unshare_task",
        parameters=[],
        request=UnshareTaskRequest,
        responses={200: inline_serializer(name="EmptyResponse", fields={})},
    )
    def post(self, request: Request, task_id: UUID) -> Response:
        params: UnshareTaskParams = UnshareTaskRequest.parse(request, {"task_id": task_id})
        self.task_permissions_service.assert_account_can_share_task(request.user, params.task)

        self.task_service.unshare_task(params)

        return Response(status=status.HTTP_204_NO_CONTENT)
