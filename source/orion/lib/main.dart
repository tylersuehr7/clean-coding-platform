import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:orion/app_injector.dart';
import 'package:orion/app_router.dart';
import 'package:orion/common/galaxy_client.dart';
import 'package:orion/domain/authentication/repositories/api_token_repository.dart';
import 'package:orion/domain/authentication/repositories/application_user_repository.dart';
import 'package:orion/domain/authentication/repositories/secure_storage_api_token_repository.dart';
import 'package:orion/domain/authentication/repositories/secure_storage_application_user_repository.dart';
import 'package:orion/domain/authentication/services/authentication_service.dart';
import 'package:orion/presentation/features/home/home_screen.dart';
import 'package:orion/presentation/features/login/login_screen.dart';
import 'package:orion/presentation/features/welcome/welcome_screen.dart';
import 'package:orion/presentation/orion_application.dart';

import 'common/network_tools.dart';

/// Main entry-point into the application.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeComponents();
  await _initializeRoutes();
  runApp(const OrionApplication());
}

Future<void> _initializeComponents() async {
  HttpOverrides.global = IgnoreDevCertsHttpOverrides();

  appInjector.registerSingleton<FlutterSecureStorage>(
    const FlutterSecureStorage()
  );

  appInjector.registerLazySingleton<IApiTokenRepository>(() => SecureStorageApiTokenRepository(
    appInjector.get<FlutterSecureStorage>(),
  ));

  appInjector.registerLazySingleton<IApplicationUserRepository>(() => SecureStorageApplicationUserRepository(
    appInjector.get<FlutterSecureStorage>(),
  ));

  appInjector.registerLazySingleton<AuthenticationService>(() => AuthenticationService(
    GalaxyClient.instance,
    appInjector.get<IApiTokenRepository>(),
    appInjector.get<IApplicationUserRepository>(),
  ));
}

Future<void> _initializeRoutes() async {
  appRouter.define("welcome", handler: AppRouterHandler(handlerFunc: ((context, args) => const WelcomeScreen())));
  appRouter.define("login", handler: AppRouterHandler(handlerFunc: ((context, args) => const LoginScreen())));
  appRouter.define("home", handler: AppRouterHandler(handlerFunc: ((context, args) => const HomeScreen())));
}
