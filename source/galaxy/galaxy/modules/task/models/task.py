import uuid

from django.db import models


class Task(models.Model):
    id = models.UUIDField(
        primary_key=True,
        default=uuid.uuid4,
        editable=False,
    )
    name = models.CharField(
        max_length=256,
        help_text="Brief name of this task.",
    )
    description = models.TextField(
        null=True,
        blank=True,
        help_text="Optional. Description or details of this task.",
    )
    owner = models.ForeignKey(
        "account.Account",
        on_delete=models.CASCADE,
        related_name="owned_tasks",
        help_text="Account who owns this task.",
    )
    shared_with = models.ManyToManyField(
        "account.Account",
        related_name="shared_tasks",
        help_text="All accounts who this task has been shared with.",
    )
    completed_on = models.DateTimeField(
        null=True,
        blank=True,
        help_text="Optional. Timestamp in which this task was marked completed.",
    )
    deleted_on = models.DateTimeField(
        null=True,
        blank=True,
        help_text="Optional. Timestamp in which this task was deleted.",
    )
    created = models.DateTimeField(
        auto_now_add=True,
    )
    updated = models.DateTimeField(
        auto_now=True,
    )

    class Meta:
        verbose_name = "Task"
        verbose_name_plural = "Tasks"
        ordering = ["-created"]

    def __str__(self):
        return f"{self.name}"
