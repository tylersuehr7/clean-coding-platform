library login;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orion/app_injector.dart';
import 'package:orion/common/galaxy_client.dart';
import 'package:orion/domain/authentication/models/auth_context.dart';
import 'package:orion/domain/authentication/services/authentication_service.dart';
import 'package:orion/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:orion/presentation/design/layout.dart';

part 'cubit/_login_cubit.dart';
part 'cubit/_login_cubit_states.dart';
part 'widgets/_login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc authBloc = context.read<AuthenticationBloc>();
    final _LoginCubit loginCubit = _LoginCubit(authBloc);
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: grid4),
          color: theme.colorScheme.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back", style: theme.textTheme.headlineSmall),
              Text("Please login to continue", style: theme.textTheme.bodyMedium),
              const Spacer(),
              _LoginForm(loginCubit),
              const Spacer(),
            ],
          )
        ),
      ),
    );
  }
}
