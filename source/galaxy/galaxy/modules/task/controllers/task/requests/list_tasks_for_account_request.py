from rest_framework import serializers
from rest_framework.request import Request

from galaxy.common.api_request import ApiRequest


class ListTasksForAccountRequest(ApiRequest):
    limit = serializers.IntegerField(default=20, required=False)
    page = serializers.IntegerField(default=1, required=False)

    @classmethod
    def parse(cls, request: Request, path_params: dict = None):
        raise NotImplementedError()
