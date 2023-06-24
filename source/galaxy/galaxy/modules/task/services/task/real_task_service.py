from uuid import UUID

from django.db import transaction
from django.db.models import QuerySet, Q
from django.utils import timezone

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task
from galaxy.modules.task.services.task.task_service import ITaskService
from galaxy.modules.task.services.task.task_service_params import (
    CreateTaskParams, UpdateTaskParams, ShareTaskParams,
    UnshareTaskParams
)


class RealTaskService(ITaskService):
    def get_task_by_id(self, task_id: UUID) -> Task:
        return Task.objects.get(pk=task_id)

    def search_tasks_for_account(self, account: Account) -> QuerySet[Task]:
        return Task.objects.filter(
            # All tasks created by account or shared with account
            Q(owner_id=account.id) |
            Q(shared_with__id=account.id)
        ).filter(
            # Tasks that have not been marked as deleted
            deleted_on__isnull=True,
        ).distinct()

    @transaction.atomic
    def create_task(self, params: CreateTaskParams) -> Task:
        new_task: Task = Task.objects.create(
            name=params.name,
            description=params.description,
            owner=params.owner,
        )

        new_task.shared_with.set(params.share_with)

        return new_task

    def update_task(self, params: UpdateTaskParams) -> Task:
        task: Task = params.task

        if params.name:
            task.name = params.name
        task.description = params.description
        task.completed_on = params.completed_on
        task.deleted_on = params.deleted_on
        task.save()

        return task

    def delete_task(self, task: Task) -> Task:
        task.deleted_on = timezone.now()
        task.save()
        return task

    @transaction.atomic
    def share_task(self, params: ShareTaskParams):
        task: Task = params.task
        for account in params.share_with:
            if not task.shared_with.filter(id=account.id).exists():
                task.shared_with.add(account)

    @transaction.atomic
    def unshare_task(self, params: UnshareTaskParams):
        task: Task = params.task
        account_ids = [account.id for account in params.unshare_with]
        task.shared_with.filter(id__in=account_ids).delete()
