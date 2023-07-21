import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';
import 'package:orion/app_injector.dart';
import 'package:orion/domain/authentication/models/api_token.dart';
import 'package:orion/domain/authentication/services/authentication_service.dart';

part 'authentication_bloc_states.dart';
part 'authentication_bloc_events.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationService _authService = appInjector.get<AuthenticationService>();

  AuthenticationBloc(): super(const AuthenticationUnknown()) {
    on<AppStarted>(_onApplicationStarted);
    on<AppLoggedIn>(_onApplicationLoggedIn);
    on<AppLoggedOut>(_onApplicationLoggedOut);
  }

  void _onApplicationStarted(final AppStarted event, final Emitter<AuthenticationState> emit) async {
    debugPrint("> AuthenticationBloc – _onApplicationStarted");
    try {
      await Future.delayed(const Duration(seconds: 2));
      final Account loggedInUser = await _authService.loadApplicationUser();
      emit(AuthenticationLoggedIn(loggedInUser));
    } catch(ex) {
      emit(const AuthenticationLoggedOut());
    }
  }

  void _onApplicationLoggedIn(final AppLoggedIn event, final Emitter<AuthenticationState> emit) async {
    debugPrint("> AuthenticationBloc – _onApplicationLoggedIn");
    await _authService.createApplicationUserSession(event.account, event.token);
    emit(AuthenticationLoggedIn(event.account));
  }

  void _onApplicationLoggedOut(final AppLoggedOut event, final Emitter<AuthenticationState> emit) async {
    debugPrint("> AuthenticationBloc – _onApplicationLoggedOut");
    await _authService.destroyApplicationUserSession();
    emit(const AuthenticationLoggedOut());
  }
}
