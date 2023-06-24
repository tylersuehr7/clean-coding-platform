import os
from galaxy import settings

PACKAGE_NAME_PREFIX = "@galaxy"
GENERATED_CLIENT_LIBS_PATH = f"{str(settings.BASE_DIR)}/generated-clients"

generator_configs = {
    "typescript-axios": {
        "lib-name": "galaxy-api-client-ts",
        "additional-properties": [
            "supportsES6=true",
            f"npmVersion={settings.VERSION}",
            f"npmName={PACKAGE_NAME_PREFIX}/galaxy-api-client-ts",
            f"npmRepository=https://gitlab.com/api/v4/projects/27971994/packages/npm/",
            f"useSingleRequestParameter=true",
        ],
    },
    "dart-dio": {
        "lib-name": "galaxy-api-client-dart",
        "additional-properties": [
            f"pubAuthor=TylerSuehr",
            f"pubAuthorEmail=tylersuehr7@yahoo.com",
            f"pubLibrary=galaxy_api_client_dart",
            f"pubName=galaxy_api_client_dart",
            f"pubVersion={settings.VERSION}",
            f"useSingleRequestParameter=true",
            f"dioLibrary=dio_http",
            f"legacyDiscriminatorBehavior=false",
        ],
    },
    "swift5": {
        "lib-name": "galaxy-api-client-swift",
        "additional-properties": [
            "library=alamofire",
            "projectName=GalaxyApi",
            "swiftPackagePath=GalaxyApiClient"
        ]
    },
}


def generate_clients():
    for lang, config in generator_configs.items():
        os.system(f"mkdir -p {GENERATED_CLIENT_LIBS_PATH}/{config['lib-name']}")
        command = f"openapi-generator-cli generate -g {lang} " "--additional-properties="

        for prop in config["additional-properties"]:
            command += f"{prop},"

        command = command[0:-1]
        command += (
            f" -o ./generated-clients/{config['lib-name']}"
            f" -i {str(settings.BASE_DIR)}/schema.yml"
            f" --enable-post-process-file"
        )

        os.system(command)
        print(command)


def build_clients():
    # Build the Flutter dart client
    os.system(
        f"(cd {GENERATED_CLIENT_LIBS_PATH}/galaxy-api-client-dart && "
        f"flutter pub get && "
        f"flutter pub upgrade && "
        f"flutter packages pub run build_runner build --delete-conflicting-outputs)"
    )

    # Build the Typescript client
    os.system(
        f"(cd {GENERATED_CLIENT_LIBS_PATH}/galaxy-api-client-ts && npm install)"
    )


def move_to_exports_directory():
    os.system(
        f"mv {GENERATED_CLIENT_LIBS_PATH}/galaxy-api-client-ts ../../exports/ && "
        f"mv {GENERATED_CLIENT_LIBS_PATH}/galaxy-api-client-dart ../../exports/ && "
        f"mv {GENERATED_CLIENT_LIBS_PATH}/galaxy-api-client-swift ../../exports/"
    )


def run():
    generate_clients()
    build_clients()
    move_to_exports_directory()
