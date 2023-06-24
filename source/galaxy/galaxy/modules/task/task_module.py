from injector import Module, singleton, provider

from galaxy.modules.task.services.task.real_task_service import RealTaskService
from galaxy.modules.task.services.task.task_service import ITaskService


class TaskModule(Module):
    @singleton
    @provider
    def provide_task_service(self) -> ITaskService:
        return RealTaskService()
