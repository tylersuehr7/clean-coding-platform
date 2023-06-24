from django.core.exceptions import ObjectDoesNotExist, BadRequest
from django.utils import timezone
from rest_framework import serializers
from rest_framework import status
from rest_framework.exceptions import APIException, NotFound
from rest_framework.response import Response
from rest_framework.views import exception_handler


class GalaxyErrorSerializer(serializers.Serializer):
    """ Serializer for normalized application errors. """
    app_code = serializers.CharField(max_length=5, required=True, allow_null=True)
    status_code = serializers.IntegerField(min_value=100, max_value=599, required=True)
    message = serializers.CharField(required=True)
    timestamp = serializers.DateTimeField(default=timezone.now())


class GalaxyError(Exception):
    """ Base error for all normalized application errors. """
    status_code: int = status.HTTP_422_UNPROCESSABLE_ENTITY

    def __init__(self, message: str, app_code: str = None, debug_data: dict = None):
        self.message = message
        self.app_code = app_code
        self.debug_data = debug_data

    def __str__(self):
        if self.app_code:
            return f"[{self.app_code}] {self.message}"
        return self.message


class GalaxyPermissionError(GalaxyError):
    """ Specialized error for application permission errors. """
    status_code = status.HTTP_403_FORBIDDEN


class GalaxyBadRequestError(GalaxyError):
    """ Specialized error for application bad request errors. """
    status_code = status.HTTP_400_BAD_REQUEST


def custom_application_exception_handler(ex, context):
    response = exception_handler(ex, context)

    response_data: dict = {}
    if isinstance(ex, APIException):
        response_data["app_code"] = None
        response_data["status_code"] = ex.status_code
        response_data["message"] = ex.detail.get("error")
    elif isinstance(ex, GalaxyError):
        response_data["app_code"] = ex.app_code
        response_data["status_code"] = ex.status_code
        response_data["message"] = ex.message
    elif isinstance(ex, ObjectDoesNotExist):
        response_data["app_code"] = "object_not_found"
        response_data["status_code"] = status.HTTP_404_NOT_FOUND
        response_data["message"] = "Object does not seem to exist!"
    elif isinstance(ex, NotFound):
        response_data["app_code"] = "not_found"
        response_data["status_code"] = status.HTTP_404_NOT_FOUND
        response_data["message"] = "Object does not seem to exist!"
    elif isinstance(ex, BadRequest):
        response_data["app_code"] = "bad_request"
        response_data["status_code"] = status.HTTP_400_BAD_REQUEST
        response_data["message"] = "Bad request!"
    else:
        response_data["app_code"] = None
        response_data["status_code"] = 500
        response_data["message"] = "An unexpected error occurred, please try again!"

    serialized_data = GalaxyErrorSerializer(response_data).data
    if response:
        return Response(serialized_data, status=response.status_code, headers=response.headers)

    return Response(serialized_data, status=response_data["status_code"])

