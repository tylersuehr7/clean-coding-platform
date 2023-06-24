from typing import List

from rest_framework import serializers
from rest_framework.request import Request

from galaxy.app_injector import injection
from galaxy.common.api_request import ApiRequest
from galaxy.modules.account.models import Account
from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.task.models import Task
from galaxy.modules.task.services.task.task_service import ITaskService
from galaxy.modules.task.services.task.task_service_params import ShareTaskParams


class ShareTaskRequest(ApiRequest):
    account_ids = serializers.ListField(child=serializers.UUIDField(), allow_empty=True, max_length=20)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None) -> ShareTaskParams:
        api_payload: dict = cls._get_payload(request.data, path_params)

        task_service = injection.get(ITaskService)
        task: Task = task_service.get_task_by_id("task_id")

        account_service = injection.get(IAccountService)
        share: List[Account] = [account_service.get_account_by_id(uid) for uid in api_payload.get("account_ids")]

        return ShareTaskParams(
            task=task,
            share_with=share,
        )
