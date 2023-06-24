from abc import ABC, abstractmethod

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task


class ITaskPermissionsService(ABC):
    @abstractmethod
    def assert_account_can_read_task(self, account: Account, task: Task):
        raise NotImplementedError()

    @abstractmethod
    def assert_account_can_delete_task(self, account: Account, task: Task):
        raise NotImplementedError()

    @abstractmethod
    def assert_account_can_share_task(self, account: Account, task: Task):
        raise NotImplementedError()
