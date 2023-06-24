from typing import List

from rest_framework import serializers
from rest_framework.request import Request

from galaxy.app_injector import injection
from galaxy.common.api_request import ApiRequest
from galaxy.modules.account.models import Account
from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.task.services.task.task_service_params import CreateTaskParams


class CreateTaskRequest(ApiRequest):
    name = serializers.CharField(max_length=256, required=True)
    description = serializers.CharField(max_length=2048, required=False, allow_null=True)
    share_with_ids = serializers.ListField(child=serializers.UUIDField(), allow_empty=True, max_length=20)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None) -> CreateTaskParams:
        api_payload: dict = cls._get_payload(request.data, path_params)

        account_service = injection.get(IAccountService)
        owner: Account = account_service.get_account_by_id(api_payload.get("account_id"))

        share: List[Account] = [account_service.get_account_by_id(uid) for uid in api_payload.get("share_with_ids")]

        return CreateTaskParams(
            name=api_payload.get("name"),
            description=api_payload.get("description"),
            owner=owner,
            share_with=share,
        )
