from django.test import TestCase

from galaxy.modules.account.models import Account
from galaxy.modules.account.permissions.account.real_account_permissions_service import RealAccountPermissionsService
from galaxy_tests.factories.account_factory import AccountFactory


class TestRealAccountPermissionsService(TestCase):
    service: RealAccountPermissionsService

    def setUp(self) -> None:
        super().setUp()
        self.service = RealAccountPermissionsService()

    def tearDown(self) -> None:
        super().tearDown()

    def test_that_assert_account_can_read_account_permits_staff(self):
        account: Account = AccountFactory.create(is_staff=True)
        self.service.assert_account_can_read_account(account, AccountFactory.create())

    def test_that_assert_account_can_read_account_permits_superuser(self):
        account: Account = AccountFactory.create(is_superuser=True)
        self.service.assert_account_can_read_account(account, AccountFactory.create())

    def test_that_assert_account_can_read_account_permits_same_account(self):
        account: Account = AccountFactory.create()
        self.service.assert_account_can_read_account(account, account)
