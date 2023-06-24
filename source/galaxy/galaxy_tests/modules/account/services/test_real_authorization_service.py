from django.test import TestCase
from django.utils import timezone

from galaxy.modules.account.models import Account
from galaxy.modules.account.services.authorization.authorization_service_errors import RejectedRefreshError
from galaxy.modules.account.services.authorization.real_authorization_service import RealAuthorizationService
from galaxy_tests.factories.account_factory import AccountFactory


class TestRealAuthorizationService(TestCase):
    authorization_service: RealAuthorizationService

    def setUp(self) -> None:
        super().setUp()
        self.authorization_service = RealAuthorizationService()

    def tearDown(self) -> None:
        super().tearDown()

    def test_that_generate_access_tokens_generates_access_and_refresh_tokens(self):
        account: Account = AccountFactory.create()

        (access, refresh) = self.authorization_service.generate_access_tokens(account)

        self.assertIsNotNone(access)
        self.assertIsNotNone(refresh)

        print(f"Access token: {access}")
        print(f"Refresh token: {refresh}")

    def test_that_post_process_refreshed_token_raises_rejected_refresh_error_when_user_does_not_exist(self):
        account: Account = AccountFactory.create()
        (access, refresh) = self.authorization_service.generate_access_tokens(account)

        account.delete()

        with self.assertRaises(RejectedRefreshError):
            self.authorization_service.post_process_refreshed_token(access.__str__())

    def test_that_post_process_refreshed_token_raises_rejected_refresh_error_when_user_is_deactivated(self):
        account: Account = AccountFactory.create()
        (access, refresh) = self.authorization_service.generate_access_tokens(account)

        account.deactivated_on = timezone.now()
        account.save()

        with self.assertRaises(RejectedRefreshError):
            self.authorization_service.post_process_refreshed_token(access.__str__())
