from injector import Injector

from galaxy.modules.account.account_module import AccountModule

injection = Injector([
    AccountModule(),
])
