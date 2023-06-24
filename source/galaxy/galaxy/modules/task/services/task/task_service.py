from abc import ABC, abstractmethod
from uuid import UUID

from django.db.models import QuerySet

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task
from galaxy.modules.task.services.task.task_service_params import (
    CreateTaskParams, UpdateTaskParams, ShareTaskParams,
    UnshareTaskParams
)


class ITaskService(ABC):
    @abstractmethod
    def get_task_by_id(self, task_id: UUID) -> Task:
        raise NotImplementedError()

    @abstractmethod
    def search_tasks_for_account(self, account: Account) -> QuerySet[Task]:
        raise NotImplementedError()

    @abstractmethod
    def create_task(self, params: CreateTaskParams) -> Task:
        raise NotImplementedError()

    @abstractmethod
    def update_task(self, params: UpdateTaskParams) -> Task:
        raise NotImplementedError()

    @abstractmethod
    def delete_task(self, task: Task) -> Task:
        raise NotImplementedError()

    @abstractmethod
    def share_task(self, params: ShareTaskParams):
        raise NotImplementedError()

    @abstractmethod
    def unshare_task(self, params: UnshareTaskParams):
        raise NotImplementedError()
