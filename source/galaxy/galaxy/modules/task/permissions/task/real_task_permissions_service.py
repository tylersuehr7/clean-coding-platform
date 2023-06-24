from galaxy.app_errors import GalaxyPermissionError
from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task
from galaxy.modules.task.permissions.task.task_permissions_service import ITaskPermissionsService


class RealTaskPermissionsService(ITaskPermissionsService):
    def assert_account_can_read_task(self, account: Account, task: Task):
        if account.is_staff or account.is_superuser:
            return
        elif task.owner_id == account.id:
            return
        elif task.shared_with.filter(id=account.id).exists():
            return
        raise GalaxyPermissionError(
            message="You are not permitted to view or update this task!",
            app_code="read_task",
            debug_data={
                "account_id": account.id,
                "task_id": task.id,
            }
        )

    def assert_account_can_delete_task(self, account: Account, task: Task):
        if account.is_staff or account.is_superuser:
            return
        elif task.owner_id == account.id:
            return
        raise GalaxyPermissionError(
            message="You are not permitted to delete this task!",
            app_code="delete_task",
            debug_data={
                "account_id": account.id,
                "task_id": task.id,
            }
        )

    def assert_account_can_share_task(self, account: Account, task: Task):
        if account.is_staff or account.is_superuser:
            return
        elif task.owner_id == account.id:
            return
        raise GalaxyPermissionError(
            message="You are not permitted to share / unshare this task!",
            app_code="share_task",
            debug_data={
                "account_id": account.id,
                "task_id": task.id,
            }
        )
