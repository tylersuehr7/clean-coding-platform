from django.test import TestCase

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task
from galaxy.modules.task.permissions.task.real_task_permissions_service import RealTaskPermissionsService
from galaxy_tests.factories.account_factory import AccountFactory
from galaxy_tests.factories.task_factory import TaskFactory


class TestRealTaskPermissionsService(TestCase):
    service: RealTaskPermissionsService

    def setUp(self) -> None:
        super().setUp()
        self.service = RealTaskPermissionsService()

    def tearDown(self) -> None:
        super().tearDown()

    def test_that_assert_account_can_read_task_permits_staff(self):
        account: Account = AccountFactory.create(is_staff=True)
        self.service.assert_account_can_read_task(account, TaskFactory.create())

    def test_that_assert_account_can_read_task_permits_superuser(self):
        account: Account = AccountFactory.create(is_superuser=True)
        self.service.assert_account_can_read_task(account, TaskFactory.create())

    def test_that_assert_account_can_read_task_permits_task_owner(self):
        account: Account = AccountFactory.create()
        task: Task = TaskFactory.create(owner=account)
        self.service.assert_account_can_read_task(account, task)

    def test_that_assert_account_can_write_task_permits_task_sharee(self):
        account: Account = AccountFactory.create()
        task: Task = TaskFactory.create(shared_with=[account])
        self.service.assert_account_can_read_task(account, task)

    def test_that_assert_account_can_delete_task_permits_staff(self):
        account: Account = AccountFactory.create(is_staff=True)
        self.service.assert_account_can_delete_task(account, TaskFactory.create())

    def test_that_assert_account_can_delete_task_permits_superuser(self):
        account: Account = AccountFactory.create(is_superuser=True)
        self.service.assert_account_can_delete_task(account, TaskFactory.create())

    def test_that_assert_account_can_delete_task_permits_task_owner(self):
        account: Account = AccountFactory.create()
        task: Task = TaskFactory.create(owner=account)
        self.service.assert_account_can_delete_task(account, task)

    def test_that_assert_account_can_share_task_permits_staff(self):
        account: Account = AccountFactory.create(is_staff=True)
        self.service.assert_account_can_share_task(account, TaskFactory.create())

    def test_that_assert_account_can_share_task_permits_superuser(self):
        account: Account = AccountFactory.create(is_superuser=True)
        self.service.assert_account_can_share_task(account, TaskFactory.create())

    def test_that_assert_account_can_share_task_permits_task_owner(self):
        account: Account = AccountFactory.create()
        task: Task = TaskFactory.create(owner=account)
        self.service.assert_account_can_share_task(account, task)
