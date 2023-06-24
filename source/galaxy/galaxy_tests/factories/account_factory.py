import factory

from galaxy.modules.account.models import Account


class AccountFactory(factory.django.DjangoModelFactory):
    class Meta:
        model = Account

    username = factory.Faker("email")
    password = "P@ssw0rd"
    first_name = None
    last_name = None
    deactivated_on = None
    is_staff = False
    is_reset_password = False
    is_verified = False
