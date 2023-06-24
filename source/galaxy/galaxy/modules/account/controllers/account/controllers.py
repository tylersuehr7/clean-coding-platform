from drf_spectacular.utils import extend_schema, inline_serializer
from rest_framework import status, serializers
from rest_framework.parsers import JSONParser
from rest_framework.permissions import AllowAny
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from galaxy.app_injector import injection
from galaxy.modules.account.controllers.account.requests.create_account_request import CreateAccountRequest
from galaxy.modules.account.models import Account
from galaxy.modules.account.serializers.account_serializer import AccountSerializer
from galaxy.modules.account.serializers.authentication_serializer import AuthenticationSerializer
from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.account.services.authorization.authorization_service import IAuthorizationService


class CreateAccountController(APIView):
    parser_classes = [JSONParser]
    permission_classes = [AllowAny]

    account_service = injection.get(IAccountService)
    authorization_service = injection.get(IAuthorizationService)

    @extend_schema(
        tags=["Account"],
        operation_id="create_new_account",
        parameters=[],
        request=CreateAccountRequest,
        responses={201: inline_serializer(
            name="CreateNewAccountResponse",
            fields={
                "access": serializers.CharField(required=True),
                "refresh": serializers.CharField(required=True),
                "account": AccountSerializer(required=True),
            },
        )},
    )
    def post(self, request: Request) -> Response:
        params = CreateAccountRequest.parse(request)
        account: Account = self.account_service.create_account(params)

        # Generate access tokens to call APIs
        access, refresh = self.authorization_service.generate_access_tokens(account)

        return Response(AuthenticationSerializer({
            "access": access.__str__(),
            "refresh": refresh.__str__(),
            "account": AccountSerializer(account).data,
        }).data, status=status.HTTP_201_CREATED)
