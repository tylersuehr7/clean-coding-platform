import 'package:orion/app_environment.dart';

class AppConfiguration {
  const AppConfiguration._();

  /// Whether this application is running on local testing simulator.
  static const bool onLocal = !bool.fromEnvironment("dart.vm.product");

  /// Application runtime environment
  static const String envName = String.fromEnvironment("app.env", defaultValue: "dev");

  /// Server endpoint
  static final serverEndpoint = {
    AppEnvironment.dev: "10.0.0.247:10001",
    AppEnvironment.prod: "api.some.endpoint.com",
  }[env]!;

  static AppEnvironment get env => AppEnvironment.fromName(envName);
}
