from injector import Module, singleton, provider

from galaxy.modules.task.permissions.task.real_task_permissions_service import RealTaskPermissionsService
from galaxy.modules.task.permissions.task.task_permissions_service import ITaskPermissionsService
from galaxy.modules.task.services.task.real_task_service import RealTaskService
from galaxy.modules.task.services.task.task_service import ITaskService


class TaskModule(Module):
    @singleton
    @provider
    def provide_task_service(self) -> ITaskService:
        return RealTaskService()

    @singleton
    @provider
    def provide_task_permissions_service(self) -> ITaskPermissionsService:
        return RealTaskPermissionsService()
