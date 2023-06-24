from rest_framework import serializers
from rest_framework.request import Request

from galaxy.common.api_request import ApiRequest


class RefreshAccessTokenRequest(ApiRequest):
    refresh = serializers.CharField(max_length=256, required=True)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None):
        pass
