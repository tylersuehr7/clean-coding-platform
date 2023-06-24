from django.urls import path, include

from galaxy.modules.account.controllers.identity import urls as identity_urls

urlpatterns = [
    path("", include(identity_urls)),
]
