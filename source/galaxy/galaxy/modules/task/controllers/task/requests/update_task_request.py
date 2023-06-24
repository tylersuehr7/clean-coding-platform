from rest_framework import serializers
from rest_framework.request import Request

from galaxy.app_injector import injection
from galaxy.common.api_request import ApiRequest
from galaxy.modules.task.models import Task
from galaxy.modules.task.services.task.task_service import ITaskService
from galaxy.modules.task.services.task.task_service_params import UpdateTaskParams


class UpdateTaskRequest(ApiRequest):
    name = serializers.CharField(max_length=256, required=True)
    description = serializers.CharField(max_length=2048, required=False, allow_null=True)
    completed_on = serializers.BooleanField(default=None, required=False, allow_null=True)
    deleted_on = serializers.BooleanField(default=None, required=False, allow_null=True)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None) -> UpdateTaskParams:
        api_payload: dict = cls._get_payload(request.data, path_params)

        task_service = injection.get(ITaskService)
        task: Task = task_service.get_task_by_id("task_id")

        return UpdateTaskParams(
            task=task,
            name=api_payload.get("name"),
            description=api_payload.get("description"),
            completed_on=api_payload.get("completed_on"),
            deleted_on=api_payload.get("deleted_on"),
        )
