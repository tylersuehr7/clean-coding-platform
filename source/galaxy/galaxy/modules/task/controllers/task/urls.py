from django.urls import path

from galaxy.modules.task.controllers.task.controllers import (
    ListOrCreateTasksForAccountController,
    GetOrUpdateOrDeleteTaskController,
    ShareTaskController,
    UnshareTaskController,
)

urlpatterns = [
    path("accounts<uuid:account_id>/tasks", ListOrCreateTasksForAccountController.as_view()),
    path("tasks/<uuid:task_id>", GetOrUpdateOrDeleteTaskController.as_view()),
    path("tasks/<uuid:task_id>/share", ShareTaskController.as_view()),
    path("tasks/<uuid:task_id>/unshare", UnshareTaskController.as_view()),
]
