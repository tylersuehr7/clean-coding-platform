from galaxy.app_errors import GalaxyError


class InvalidLoginError(GalaxyError):
    def __init__(self):
        super().__init__(message="Invalid login attempt!")
