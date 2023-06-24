from django.contrib.auth.base_user import BaseUserManager
from django.core.exceptions import ValidationError
from django.core.validators import validate_email


class EmailAddress:
    """Domain Value Object for an email address."""
    _email: str

    def __init__(self, email: str):
        self._validate(email)
        self._email = BaseUserManager.normalize_email(email)

    @staticmethod
    def _validate(email: str):
        try:
            validate_email(email)
        except ValidationError as e:
            raise InvalidEmailAddressError(email) from e

    @property
    def email(self):
        return self._email

    def __str__(self) -> str:
        return self._email


class InvalidEmailAddressError(ValidationError):
    def __init__(self, email: str):
        super().__init__(f"Invalid email address format: {email}")
