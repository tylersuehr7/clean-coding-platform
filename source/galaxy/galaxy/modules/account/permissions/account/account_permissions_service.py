from abc import ABC, abstractmethod

from galaxy.modules.account.models import Account


class IAccountPermissionsService(ABC):
    @abstractmethod
    def assert_account_can_read_account(self, account: Account, other: Account):
        raise NotImplementedError()
