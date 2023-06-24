import factory
import uuid

from galaxy.modules.task.models import Task
from galaxy_tests.factories.account_factory import AccountFactory


class TaskFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = Task

    id = factory.LazyFunction(uuid.uuid4)
    name = factory.Faker("sentence", nb_words=3)
    description = factory.Faker("paragraph", nb_sentences=2)
    owner = factory.SubFactory(AccountFactory)
    completed_on = None
    deleted_on = None

    @factory.post_generation
    def shared_with(self, create, extracted, **kwargs):
        if not create:
            return
        if extracted:
            if isinstance(extracted, int):
                accounts = AccountFactory.create_batch(extracted)
                self.shared_with.set(accounts)
            else:
                for account in extracted:
                    self.shared_with.add(account)
