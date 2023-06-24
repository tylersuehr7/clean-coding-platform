import re

from django.core.exceptions import ValidationError
from django.core.validators import RegexValidator
from phonenumbers import PhoneNumberFormat, parse, format_number


class PhoneNumber:
    """Domain Value Object for a phone number."""
    _phone_number: str

    def __init__(self, phone_number: str):
        phone_number: str = self._normalize_phone_number(phone_number)
        self._validate(phone_number)
        self._phone_number = phone_number

    @staticmethod
    def _normalize_phone_number(phone: str) -> str:
        """Normalizes the give phone number to standard (###########)"""
        normalized_phone = re.sub(r"\D", "", phone)
        if len(normalized_phone) > 10 and normalized_phone[0] == "1":
            normalized_phone = normalized_phone[1:]
        return normalized_phone

    @staticmethod
    def _validate(phone_number: str):
        try:
            RegexValidator(r'^\d{10}$')(phone_number)
        except Exception as e:
            raise InvalidPhoneNumberError(phone_number) from e

    @property
    def phone_number(self) -> str:
        """##########"""
        return self._phone_number

    @property
    def formatted_phone_number(self):
        """###-###-####"""
        return format_number(parse(self._phone_number, "US"), PhoneNumberFormat.INTERNATIONAL).split(" ")[1]

    @property
    def us_official_formatted_phone_number(self):
        """+1 ###-###-####"""
        return format_number(parse(self._phone_number, "US"), PhoneNumberFormat.INTERNATIONAL)

    @property
    def e164_formatted_phone_number(self):
        """+1###########"""
        return format_number(parse(self._phone_number, "US"), PhoneNumberFormat.E164)


class InvalidPhoneNumberError(ValidationError):
    def __init__(self, phone_number: str):
        super().__init__(f"Invalid phone number format: {phone_number}")
