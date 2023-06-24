from dataclasses import dataclass
from typing import Optional


@dataclass(frozen=True)
class CreateAccountParams:
    username: str
    password: str
    first_name: Optional[str]
    last_name: Optional[str]
    is_reset_password: bool = False
    is_verified: bool = False


@dataclass(frozen=True)
class AuthenticateAccountParams:
    username: str
    password: str
