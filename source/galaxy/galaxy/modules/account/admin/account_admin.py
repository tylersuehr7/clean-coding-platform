from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.utils.translation import gettext_lazy as _

from galaxy.modules.account.models import Account


@admin.register(Account)
class AccountAdmin(UserAdmin):
    ordering = ("updated",)

    list_display = ("username", "is_staff", "is_superuser", "deactivated_on", "created", "updated")

    list_filter = ["is_staff", "is_superuser"]

    search_fields = ["id", "username", "first_name", "last_name"]

    fieldsets = (
        (None, {"fields": (
            "is_verified",
            "deactivated_on",
        )}),
        (_("Personal Details"), {
           "fields": (
               "first_name",
               "last_name",
           )
        }),
        (_("Credentials"), {
            "fields": (
                "username",
                "password",
                "is_reset_password",
            ),
        }),
        (_("Permissions"), {
            "fields": (
                "is_staff",
                "is_superuser",
                "groups",
                "user_permissions",
            ),
        }),
        (_("Other Details"), {"fields": (
            "id",
            "last_login",
            "created",
            "updated",
        )}),
    )

    add_fieldsets = (
        (None, {
            "classes": ("wide",),
            "fields": ("username", "password1", "password2"),
        }),
    )

    readonly_fields = ["id", "last_login", "created", "updated"]
