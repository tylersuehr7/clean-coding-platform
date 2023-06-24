from injector import Injector

from galaxy.modules.account.account_module import AccountModule
from galaxy.modules.task.task_module import TaskModule

injection = Injector([
    AccountModule(),
    TaskModule(),
])
