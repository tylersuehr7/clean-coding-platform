import uuid
from datetime import datetime
from typing import List

from django.core.exceptions import ObjectDoesNotExist
from django.db.models import QuerySet
from django.test import TestCase
from django.utils import timezone

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task
from galaxy.modules.task.services.task.real_task_service import RealTaskService
from galaxy.modules.task.services.task.task_service_params import (
    CreateTaskParams, UpdateTaskParams, ShareTaskParams,
    UnshareTaskParams
)
from galaxy_tests.factories.account_factory import AccountFactory
from galaxy_tests.factories.task_factory import TaskFactory


class TestRealTaskService(TestCase):
    service: RealTaskService

    def setUp(self) -> None:
        super().setUp()
        self.service = RealTaskService()

    def tearDown(self) -> None:
        super().tearDown()

    def test_that_get_task_by_id_returns_correct_task(self):
        task: Task = TaskFactory.create()
        result: Task = self.service.get_task_by_id(task.id)
        self.assertEqual(result, task)

    def test_that_get_task_by_id_raises_object_does_not_exist_error_when_task_does_not_exist(self):
        with self.assertRaises(ObjectDoesNotExist):
            self.service.get_task_by_id(uuid.uuid4())

    def test_that_search_tasks_for_account_returns_tasks_when_account_is_owner(self):
        account: Account = AccountFactory.create()

        tasks: List[Task] = [
            TaskFactory.create(owner=account),
            TaskFactory.create(owner=account),
            TaskFactory.create(),
        ]

        result: QuerySet[Task] = self.service.search_tasks_for_account(account)

        self.assertSetEqual(set(result), {tasks[0], tasks[1]})

    def test_that_search_tasks_for_account_returns_tasks_when_account_is_shared_with(self):
        account: Account = AccountFactory.create()

        tasks: List[Task] = [
            TaskFactory.create(shared_with=[account]),
            TaskFactory.create(shared_with=[account]),
            TaskFactory.create(),
        ]

        result: QuerySet[Task] = self.service.search_tasks_for_account(account)

        self.assertSetEqual(set(result), {tasks[0], tasks[1]})

    def test_that_search_tasks_for_account_excludes_tasks_that_were_marked_deleted(self):
        account: Account = AccountFactory.create()

        tasks: List[Task] = [
            TaskFactory.create(owner=account),
            TaskFactory.create(owner=account, deleted_on=timezone.now()),
        ]

        result: QuerySet[Task] = self.service.search_tasks_for_account(account)

        self.assertSetEqual(set(result), {tasks[0]})

    def test_that_create_task_creates_task_with_correct_name(self):
        name: str = "Something"

        task: Task = self.service.create_task(
            CreateTaskParams(
                name=name,
                description=None,
                owner=AccountFactory.create(),
                share_with=set(),
            )
        )

        self.assertEqual(task.name, name)

    def test_that_create_task_creates_task_with_correct_description(self):
        description: str = "Something"

        task: Task = self.service.create_task(
            CreateTaskParams(
                name="",
                description=description,
                owner=AccountFactory.create(),
                share_with=set(),
            )
        )

        self.assertEqual(task.description, description)

    def test_that_create_task_creates_task_with_correct_owner(self):
        account: Account = AccountFactory.create()

        task: Task = self.service.create_task(
            CreateTaskParams(
                name="",
                description=None,
                owner=account,
                share_with=set(),
            )
        )

        self.assertEqual(task.owner, account)

    def test_that_create_task_creates_task_with_correct_shared_accounts(self):
        share: List[Account] = [
            AccountFactory.create(),
            AccountFactory.create(),
        ]

        task: Task = self.service.create_task(
            CreateTaskParams(
                name="",
                description=None,
                owner=AccountFactory.create(),
                share_with=set(share),
            )
        )

        self.assertSetEqual(set(task.shared_with.all()), set(share))

    def test_that_update_task_updates_task_with_correct_name(self):
        name: str = "Something"

        task: Task = TaskFactory.create()

        result: Task = self.service.update_task(
            UpdateTaskParams(
                task=task,
                name=name,
            )
        )

        self.assertEqual(result.name, name)

    def test_that_update_task_updates_task_with_correct_description(self):
        description: str = "Something"

        task: Task = TaskFactory.create()

        result: Task = self.service.update_task(
            UpdateTaskParams(
                task=task,
                description=description,
            )
        )

        self.assertEqual(result.description, description)

    def test_that_update_task_updates_task_with_correct_completed_on(self):
        completed_on: datetime = timezone.now()

        task: Task = TaskFactory.create()

        result: Task = self.service.update_task(
            UpdateTaskParams(
                task=task,
                completed_on=completed_on,
            )
        )

        self.assertEqual(result.completed_on, completed_on)

    def test_that_update_task_updates_task_with_correct_deleted_on(self):
        deleted_on: datetime = timezone.now()

        task: Task = TaskFactory.create()

        result: Task = self.service.update_task(
            UpdateTaskParams(
                task=task,
                deleted_on=deleted_on,
            )
        )

        self.assertEqual(result.deleted_on, deleted_on)

    def test_that_delete_task_sets_the_deleted_on_timestamp(self):
        task: Task = TaskFactory.create()
        self.assertIsNone(task.deleted_on)
        result: Task = self.service.delete_task(task)
        self.assertIsNotNone(result.deleted_on)

    def test_that_share_task_shares_task_with_given_accounts(self):
        accounts: List[Account] = [
            AccountFactory.create(),
            AccountFactory.create(),
        ]

        task: Task = TaskFactory.create()

        self.service.share_task(
            ShareTaskParams(
                task=task,
                share_with=accounts,
            )
        )

        self.assertSetEqual(set(task.shared_with.all()), set(accounts))

    def test_that_unshare_task_removes_shared_tasks_from_given_accounts(self):
        task: Task = TaskFactory.create(shared_with=3)

        self.service.unshare_task(
            UnshareTaskParams(
                task=task,
                unshare_with=set(task.shared_with.all()),
            )
        )

        self.assertSetEqual(set(task.shared_with.all()), set())
