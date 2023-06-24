from rest_framework_simplejwt.tokens import AccessToken, RefreshToken

from galaxy.modules.account.models import Account
from galaxy.modules.account.services.authorization.authorization_service import IAuthorizationService
from galaxy.modules.account.services.authorization.authorization_service_errors import RejectedRefreshError


class RealAuthorizationService(IAuthorizationService):
    def generate_access_tokens(self, account: Account) -> (AccessToken, RefreshToken):
        refresh_token: RefreshToken = RefreshToken.for_user(account)
        access_token: AccessToken = refresh_token.access_token
        return access_token, refresh_token

    def post_process_refreshed_token(self, access: str):
        token = AccessToken(token=access, verify=False)
        affected_user_uid = token.get("user_id")

        try:
            account: Account = Account.objects.get(pk=affected_user_uid)
        except Account.DoesNotExist as e:
            raise RejectedRefreshError("Account of this token doesn't seem to exist!") from e

        if account.deactivated_on:
            raise RejectedRefreshError("Your account is no longer active!")
