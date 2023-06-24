from dataclasses import dataclass
from datetime import datetime
from typing import Optional, Iterable

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task


@dataclass(frozen=True)
class CreateTaskParams:
    name: str
    description: Optional[str]
    owner: Account
    share_with: Iterable[Account]


@dataclass(frozen=True)
class UpdateTaskParams:
    task: Task
    name: Optional[str] = None
    description: Optional[str] = None
    completed_on: Optional[datetime] = None
    deleted_on: Optional[datetime] = None


@dataclass(frozen=True)
class ShareTaskParams:
    task: Task
    share_with: Iterable[Account]


@dataclass(frozen=True)
class UnshareTaskParams:
    task: Task
    unshare_with: Iterable[Account]
