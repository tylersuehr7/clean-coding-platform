from rest_framework import serializers
from rest_framework.request import Request

from galaxy.common.api_request import ApiRequest
from galaxy.modules.account.services.account.account_service_params import CreateAccountParams


class CreateAccountRequest(ApiRequest):
    username = serializers.CharField(max_length=256, required=True)
    password = serializers.CharField(max_length=256, required=True)
    first_name = serializers.CharField(max_length=64, required=False, allow_null=True)
    last_name = serializers.CharField(max_length=64, required=False, allow_null=True)
    is_reset_password = serializers.BooleanField(default=False, required=False)
    is_verified = serializers.BooleanField(default=False, required=False)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None) -> CreateAccountParams:
        api_payload: dict = cls._get_payload(request.data, path_params)
        return CreateAccountParams(
            username=api_payload.get("username"),
            password=api_payload.get("password"),
            first_name=api_payload.get("first_name"),
            last_name=api_payload.get("last_name"),
            is_reset_password=api_payload.get("is_reset_password"),
            is_verified=api_payload.get("is_verified"),
        )
