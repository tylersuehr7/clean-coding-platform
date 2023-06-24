from abc import ABC, abstractmethod

from rest_framework_simplejwt.tokens import AccessToken, RefreshToken

from galaxy.modules.account.models import Account


class IAuthorizationService(ABC):
    @abstractmethod
    def generate_access_tokens(self, account: Account) -> (AccessToken, RefreshToken):
        raise NotImplementedError()

    @abstractmethod
    def post_process_refreshed_token(self, access: str):
        raise NotImplementedError()
