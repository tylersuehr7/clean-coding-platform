from abc import ABC, abstractmethod
from uuid import UUID

from galaxy.modules.account.models import Account
from galaxy.modules.account.services.account.account_service_params import (
    CreateAccountParams,
    AuthenticateAccountParams
)


class IAccountService(ABC):
    @abstractmethod
    def get_account_by_id(self, account_id: UUID) -> Account:
        raise NotImplementedError()

    @abstractmethod
    def get_account_by_username(self, username: str) -> Account:
        raise NotImplementedError()

    @abstractmethod
    def create_account(self, params: CreateAccountParams) -> Account:
        raise NotImplementedError()

    @abstractmethod
    def authenticate(self, params: AuthenticateAccountParams) -> Account:
        raise NotImplementedError()
