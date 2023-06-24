from typing import Optional
from uuid import UUID

from galaxy.modules.account.models import Account
from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.account.services.account.account_service_errors import InvalidLoginError
from galaxy.modules.account.services.account.account_service_params import (
    CreateAccountParams,
    AuthenticateAccountParams
)


class RealAccountService(IAccountService):
    def get_account_by_id(self, account_id: UUID) -> Account:
        return Account.objects.get(pk=account_id)

    def get_account_by_username(self, username: str) -> Account:
        return Account.objects.get(username=username)

    def create_account(self, params: CreateAccountParams) -> Account:
        return Account.objects.create(
            username=params.username,
            password=params.password,
            first_name=params.first_name,
            last_name=params.last_name,
            is_reset_password=params.is_reset_password,
            is_verified=params.is_verified,
        )

    def authenticate(self, params: AuthenticateAccountParams) -> Account:
        account: Optional[Account] = Account.objects.filter(username=params.username).first()
        if not account or not account.check_password(params.password) or account.deactivated_on:
            raise InvalidLoginError()
        return account
