import 'dart:io';

import 'package:orion/app_configuration.dart';
import 'package:orion/app_environment.dart';

/// Overrides network certificate verification for development environment.
class IgnoreDevCertsHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    if (AppEnvironment.dev == AppConfiguration.env) {
      return super.createHttpClient(context)..badCertificateCallback = (cert, host, port) => true;
    }
    return super.createHttpClient(context);
  }
}
