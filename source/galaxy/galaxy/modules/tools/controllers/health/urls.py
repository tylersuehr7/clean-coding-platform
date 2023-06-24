from django.urls import path

from galaxy.modules.tools.controllers.health.controllers import PingHealthController

urlpatterns = [
    path("ping", PingHealthController.as_view()),
]
