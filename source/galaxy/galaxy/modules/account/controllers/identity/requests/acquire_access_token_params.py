from rest_framework import serializers
from rest_framework.request import Request

from galaxy.common.api_request import ApiRequest
from galaxy.modules.account.services.account.account_service_params import AuthenticateAccountParams


class AcquireAccessTokenRequest(ApiRequest):
    username = serializers.CharField(max_length=256, required=True)
    password = serializers.CharField(max_length=256, required=True)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None) -> AuthenticateAccountParams:
        api_payload: dict = cls._get_payload(request.data, path_params)
        return AuthenticateAccountParams(
            username=api_payload.get("username"),
            password=api_payload.get("password"),
        )
