from drf_spectacular.utils import extend_schema, inline_serializer
from rest_framework import status
from rest_framework.parsers import JSONParser
from rest_framework.permissions import AllowAny
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView


class PingHealthController(APIView):
    parser_classes = [JSONParser]
    permission_classes = [AllowAny]

    @extend_schema(
        tags=["Health"],
        operation_id="ping",
        parameters=[],
        request=inline_serializer(name="EmptyRequest", fields={}),
        responses={204: inline_serializer(name="EmptyResponse", fields={})},
    )
    def get(self, request: Request) -> Response:
        return Response(status=status.HTTP_204_NO_CONTENT)
