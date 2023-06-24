from rest_framework import serializers

from galaxy.modules.account.models import Account
from galaxy.modules.task.models import Task


class TaskSharedAccountSerializer(serializers.ModelSerializer):
    class Meta:
        model = Account
        fields = [
            "id",
            "display_name",
        ]


class TaskSerializer(serializers.ModelSerializer):
    owner_display_name = serializers.CharField(source="owner.display_name", required=True)
    shared_with = TaskSharedAccountSerializer(many=True, required=True)

    class Meta:
        model = Task
        fields = [
            "id",
            "name",
            "description",
            "owner_id",
            "owner_display_name",
            "shared_with",
            "completed_on",
            "created",
            "updated",
        ]
