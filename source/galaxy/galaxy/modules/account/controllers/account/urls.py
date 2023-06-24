from django.urls import path

from galaxy.modules.account.controllers.account.controllers import CreateAccountController

urlpatterns = [
    path("accounts", CreateAccountController.as_view()),
]
