from injector import Module, singleton, provider

from galaxy.modules.account.services.account.account_service import IAccountService
from galaxy.modules.account.services.account.real_account_service import RealAccountService
from galaxy.modules.account.services.authorization.authorization_service import IAuthorizationService
from galaxy.modules.account.services.authorization.real_authorization_service import RealAuthorizationService


class AccountModule(Module):
    @singleton
    @provider
    def provide_account_service(self) -> IAccountService:
        return RealAccountService()

    @singleton
    @provider
    def provide_authorization_service(self) -> IAuthorizationService:
        return RealAuthorizationService()
