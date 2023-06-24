from rest_framework import serializers

from galaxy.modules.account.models import Account


class AccountSerializer(serializers.ModelSerializer):
    class Meta:
        model = Account
        fields = [
            "id",
            "first_name",
            "last_name",
            "display_name",
            "deactivated_on",
            "is_reset_password",
            "is_verified",
            "created",
            "updated",
        ]
