enum AppEnvironment {
  dev, prod;

  static AppEnvironment fromName(final String name) {
    switch (name) {
      case "dev": return AppEnvironment.dev;
      case "prod": return AppEnvironment.prod;
      default: throw Exception("Invalid environment name '$name'!");
    }
  }
}
