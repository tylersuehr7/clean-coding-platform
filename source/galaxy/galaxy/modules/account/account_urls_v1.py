from django.urls import path, include

from galaxy.modules.account.controllers.account import urls as account_urls
from galaxy.modules.account.controllers.identity import urls as identity_urls

urlpatterns = [
    path("", include(account_urls)),
    path("", include(identity_urls)),
]
