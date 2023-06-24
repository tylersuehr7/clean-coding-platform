from rest_framework import serializers

from galaxy.modules.account.serializers.account_serializer import AccountSerializer


class AuthenticationSerializer(serializers.Serializer):
    access = serializers.CharField(required=True)
    refresh = serializers.CharField(required=True)
    account = AccountSerializer(required=True)
