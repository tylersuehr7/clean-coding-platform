from galaxy.app_errors import GalaxyPermissionError
from galaxy.modules.account.models import Account
from galaxy.modules.account.permissions.account.account_permissions_service import IAccountPermissionsService


class RealAccountPermissionsService(IAccountPermissionsService):
    def assert_account_can_read_account(self, account: Account, other: Account):
        if account.is_staff or account.is_superuser:
            return
        elif account.id == other.id:
            return
        raise GalaxyPermissionError(
            message="You are not permitted to view this account!",
            app_code="read_task",
            debug_data={
                "account_id": account.id,
                "other_account_id": other.id,
            }
        )
