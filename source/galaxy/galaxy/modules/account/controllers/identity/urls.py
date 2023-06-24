from django.urls import path

from galaxy.modules.account.controllers.identity.controllers import (
    AcquireAccessTokenController,
    RefreshAccessTokenController,
    IntrospectAccessTokenController,
)

urlpatterns = [
    path("identity", AcquireAccessTokenController.as_view()),
    path("identity/refresh", RefreshAccessTokenController.as_view()),
    path("identity/introspect", IntrospectAccessTokenController.as_view()),
]
