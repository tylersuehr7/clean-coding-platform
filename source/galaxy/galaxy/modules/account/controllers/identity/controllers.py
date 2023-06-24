from drf_spectacular.utils import extend_schema, inline_serializer
from rest_framework import status, serializers
from rest_framework.parsers import JSONParser
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_simplejwt.views import TokenRefreshView

from galaxy.app_injector import injection
from galaxy.modules.account.controllers.identity.requests.acquire_access_token_params import AcquireAccessTokenRequest
from galaxy.modules.account.controllers.identity.requests.refresh_access_token_request import RefreshAccessTokenRequest
from galaxy.modules.account.models import Account
from galaxy.modules.account.serializers.account_serializer import AccountSerializer
from galaxy.modules.account.serializers.authentication_serializer import AuthenticationSerializer
from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.account.services.authorization.authorization_service import IAuthorizationService


class AcquireAccessTokenController(APIView):
    permission_classes = [AllowAny]
    parser_classes = [JSONParser]

    account_service = injection.get(IAccountService)
    authorization_service = injection.get(IAuthorizationService)

    @extend_schema(
        tags=["Identity"],
        operation_id="acquire_access_token",
        auth=[],
        parameters=[],
        request=AcquireAccessTokenRequest,
        responses={200: inline_serializer(
            name="AcquireAccessTokenResponse",
            fields={
                "access": serializers.CharField(required=True),
                "refresh": serializers.CharField(required=True),
                "account": AccountSerializer(required=True),
            },
        )},
    )
    def post(self, request: Request) -> Response:
        params = AcquireAccessTokenRequest.parse(request)
        account: Account = self.account_service.authenticate(params)

        # Generate access tokens to call APIs
        access, refresh = self.authorization_service.generate_access_tokens(account)

        return Response(AuthenticationSerializer({
            "access": access.__str__(),
            "refresh": refresh.__str__(),
            "account": AccountSerializer(account).data,
        }).data, status=status.HTTP_200_OK)


class RefreshAccessTokenController(TokenRefreshView):
    """ Proxy API for the underlying TokenRefreshView – so DRF can see this """

    authorization_service = injection.get(IAuthorizationService)

    @extend_schema(
        tags=["Identity"],
        operation_id="refresh_access_token",
        auth=[],
        request=RefreshAccessTokenRequest,
        responses={200: inline_serializer(
            name="RefreshAccessTokenResponse",
            fields={
                "access": serializers.CharField(required=True),
                "refresh": serializers.CharField(required=True),
            }
        )},
    )
    def post(self, request, *args, **kwargs):
        response = super().post(request, args, kwargs)

        access_token = response.data.get("access")
        if access_token:
            self.authorization_service.post_process_refreshed_token(access_token)

        return response


class IntrospectAccessTokenController(APIView):
    permission_classes = [IsAuthenticated]
    parser_classes = [JSONParser]

    account_service = injection.get(IAccountService)

    @extend_schema(
        tags=["Identity"],
        operation_id="introspect_access_token",
        parameters=[],
        request=inline_serializer(name="EmptyRequest", fields={}),
        responses={200: inline_serializer(
            name="IntrospectAccessTokenResponse",
            fields={
                "account": AccountSerializer(required=True),
            },
        )},
    )
    def post(self, request: Request) -> Response:
        account: Account = self.account_service.get_account_by_id(request.user.id)
        return Response({
            "account": AccountSerializer(account).data,
        }, status=status.HTTP_200_OK)
