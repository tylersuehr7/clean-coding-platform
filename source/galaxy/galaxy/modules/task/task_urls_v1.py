from django.urls import path, include

from galaxy.modules.task.controllers.task import urls as tasks_urls

urlpatterns = [
    path("", include(tasks_urls)),
]
