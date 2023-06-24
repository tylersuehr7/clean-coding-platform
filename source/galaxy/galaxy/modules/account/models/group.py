from django.contrib import admin
from django.contrib.auth.admin import GroupAdmin as BaseGroupAdmin
from django.contrib.auth.models import Group as DjangoGroup


class Group(DjangoGroup):
    """
    Instead of trying to get custom account under existing "Authentication
    and Authorization" section, this proxy Group model lists the group
    under the custom account section.
    https://github.com/tmm/django-username-email/blob/master/cuser/admin.py
    """

    class Meta:
        verbose_name = "Group"
        verbose_name_plural = "Groups"
        proxy = True


admin.site.unregister(DjangoGroup)


@admin.register(Group)
class GroupAdmin(BaseGroupAdmin):
    pass
