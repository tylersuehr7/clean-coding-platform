from rest_framework import status

from galaxy.app_errors import GalaxyError


class RejectedRefreshError(GalaxyError):
    """ Thrown when the refresh token is rejected. """
    status_code = status.HTTP_401_UNAUTHORIZED
