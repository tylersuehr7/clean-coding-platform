import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orion/app_router.dart';

import 'blocs/authentication/authentication_bloc.dart';
import 'design/styles.dart';
import 'design/themes.dart';

class OrionApplication extends StatelessWidget {
  const OrionApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (_) => AuthenticationBloc()..add(const AppStarted()),
        ),
      ],
      child: MaterialApp(
        title: "Orion",
        theme: ThemeData(
          inputDecorationTheme: OrionInputDecorationTheme(orionLightColorScheme),
          outlinedButtonTheme: OutlinedButtonThemeData(style: orionButtonStyle),
          filledButtonTheme: FilledButtonThemeData(style: orionButtonStyle),
          colorScheme: orionLightColorScheme,
          textTheme: orionTextTheme,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          inputDecorationTheme: OrionInputDecorationTheme(orionDarkColorScheme),
          outlinedButtonTheme: OutlinedButtonThemeData(style: orionButtonStyle),
          filledButtonTheme: FilledButtonThemeData(style: orionButtonStyle),
          colorScheme: orionDarkColorScheme,
          textTheme: orionTextTheme,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.light,
        initialRoute: "boot",
        onGenerateRoute: appRouter.generator,
        navigatorKey: appNavigatorKey,
        builder: (context, child) => GestureDetector(
          // Allow user to un-focus widgets by tapping on something else
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: _onAuthenticationStateChanged,
            child: child,
          ),
        ),
      ),
    );
  }

  void _onAuthenticationStateChanged(final BuildContext context, final AuthenticationState state) {
    if (state is AuthenticationLoggedOut) {
      appNavigatorKey.currentState?.pushNamedAndRemoveUntil("welcome", (route) => false);
    } else if (state is AuthenticationLoggedIn) {
      appNavigatorKey.currentState?.pushNamedAndRemoveUntil("home", (route) => false);
    }
  }
}
