import uuid

from django.contrib.auth.base_user import AbstractBaseUser, BaseUserManager
from django.contrib.auth.models import PermissionsMixin
from django.db import models


class AccountManager(BaseUserManager):
    def create(self, username: str, password: str, **extra_fields) -> object:
        extra_fields.setdefault("is_superuser", False)
        extra_fields.setdefault("is_staff", False)
        extra_fields.setdefault("username", username)

        if not username:
            raise ValueError("A username must be provided!")
        if not password:
            raise ValueError("A password must be provided!")

        if extra_fields["is_superuser"]:
            extra_fields.setdefault("first_name", "Super")
            extra_fields.setdefault("last_name", "User")

        user = self.model(**extra_fields)
        user.set_password(raw_password=password)
        user.save()

        return user

    def create_superuser(self, username: str, password: str, **extra_fields) -> object:
        extra_fields.setdefault("is_superuser", True)
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("is_verified", True)
        return self.create(username, password, **extra_fields)


class Account(AbstractBaseUser, PermissionsMixin):
    id = models.UUIDField(
        primary_key=True,
        default=uuid.uuid4,
        editable=False,
        help_text="Unique identifier of this account.",
    )
    username = models.CharField(
        max_length=256,
        unique=True,
        help_text="Required. 256 characters or fewer. Letters, digits and @/./+/-/_ only.",
        error_messages={
            "unique": "A account with that username already exists",
        },
    )
    first_name = models.CharField(
        max_length=64,
        null=True,
        blank=True,
        help_text="First name of the account of this account.",
    )
    last_name = models.CharField(
        max_length=64,
        null=True,
        blank=True,
        help_text="Last name of the account of this account.",
    )
    deactivated_on = models.DateTimeField(
        null=True,
        blank=True,
        help_text="Optional. Timestamp in which this account was deactivated.",
    )
    is_staff = models.BooleanField(
        default=False,
        help_text="Indicates that this account is staff."
    )
    is_reset_password = models.BooleanField(
        default=False,
        help_text="Indicates that this account must reset their password."
    )
    is_verified = models.BooleanField(
        default=False,
        help_text="Indicates that this account is verified."
    )
    created = models.DateTimeField(
        auto_now_add=True,
    )
    updated = models.DateTimeField(
        auto_now=True,
    )

    USERNAME_FIELD = "username"
    objects = AccountManager()

    class Meta:
        verbose_name = "Account"
        verbose_name_plural = "Accounts"
        ordering = ["-created"]

    def __str__(self):
        return f"{self.display_name}"

    @property
    def display_name(self) -> str:
        if self.first_name and self.last_name:
            return f"{self.first_name} {self.last_name}"
        return "Galaxy User"
