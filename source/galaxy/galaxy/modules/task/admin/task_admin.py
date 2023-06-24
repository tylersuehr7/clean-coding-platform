from django.contrib import admin

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task


class SharedWithInline(admin.TabularInline):
    model = Task.shared_with.through
    verbose_name = "Shared With Account"
    extra = 1


@admin.register(Task)
class TaskAdmin(admin.ModelAdmin):
    list_display = ("name", "owner", "completed_on", "deleted_on", "created", "updated")
    list_filter = ("owner",)
    search_fields = ("id", "name", "owner__id", "owner__username",)
    fieldsets = (
        ["General", {"fields": (
            "name",
            "description",
            "owner",
        )}],
        ["Status", {"fields": (
            "completed_on",
            "deleted_on",
        )}],
        ["Other", {"fields": (
            "id",
            "created",
            "updated",
        )}],
    )
    readonly_fields = ("id", "created", "updated",)

    def get_inlines(self, request, obj):
        if not obj:
            return []
        return [
            SharedWithInline,
        ]
