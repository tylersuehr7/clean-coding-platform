import uuid

from django.core.exceptions import ObjectDoesNotExist
from django.test import TestCase
from django.utils import timezone

from galaxy.modules.account.models import Account
from galaxy.modules.account.services.account.account_service_errors import InvalidLoginError
from galaxy.modules.account.services.account.account_service_params import AuthenticateAccountParams
from galaxy.modules.account.services.account.real_account_service import RealAccountService
from galaxy_tests.factories.account_factory import AccountFactory


class TestRealAccountService(TestCase):
    service: RealAccountService

    def setUp(self) -> None:
        super().setUp()
        self.service = RealAccountService()

    def tearDown(self) -> None:
        super().tearDown()

    def test_that_get_account_by_id_returns_correct_user(self):
        account: Account = AccountFactory.create()
        result: Account = self.service.get_account_by_id(account.id)
        self.assertEquals(result, account)

    def test_that_get_account_by_id_raises_object_does_not_exist_error_when_account_does_not_exist(self):
        with self.assertRaises(ObjectDoesNotExist):
            self.service.get_account_by_id(uuid.uuid4())

    def test_that_get_account_by_username_returns_correct_user(self):
        account: Account = AccountFactory.create()
        result: Account = self.service.get_account_by_username(account.username)
        self.assertEquals(result, account)

    def test_that_get_account_by_username_raises_object_does_not_exist_error_when_account_does_not_exist(self):
        with self.assertRaises(ObjectDoesNotExist):
            self.service.get_account_by_username("")

    def test_that_authenticate_account_returns_authenticated_user(self):
        username = "test@test.com"
        password = "P@ssw0rd"

        account: Account = AccountFactory.create(username=username, password=password)

        result: Account = self.service.authenticate(
            AuthenticateAccountParams(
                username=username,
                password=password,
            )
        )

        self.assertEquals(result, account)

    def test_that_authenticate_account_user_raises_invalid_login_error_when_email_wrong(self):
        username = "test@test.com"
        password = "P@ssw0rd"

        AccountFactory.create(username=username, password=password)

        with self.assertRaises(InvalidLoginError):
            self.service.authenticate(
                AuthenticateAccountParams(
                    username="Not Correct",
                    password=password,
                )
            )

    def test_that_authenticate_account_raises_invalid_login_error_when_password_wrong(self):
        username = "test@test.com"
        password = "P@ssw0rd"

        AccountFactory.create(username=username, password=password)

        with self.assertRaises(InvalidLoginError):
            self.service.authenticate(
                AuthenticateAccountParams(
                    username=username,
                    password="not correct",
                )
            )

    def test_that_authenticate_account_raises_invalid_login_error_when_user_deactivated(self):
        username = "test@test.com"
        password = "P@ssw0rd"

        AccountFactory.create(username=username, password=password, deactivated_on=timezone.now())

        with self.assertRaises(InvalidLoginError):
            self.service.authenticate(
                AuthenticateAccountParams(
                    username=username,
                    password=password,
                )
            )
