part of 'authentication_bloc.dart';

/// Describes a generic authentication event.
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

/// Emitted once the application has been started.
class AppStarted extends AuthenticationEvent {
  const AppStarted();
}

/// Emitted once the application user has successfully logged in.
class AppLoggedIn extends AuthenticationEvent {
  final Account account;
  final ApiToken token;
  const AppLoggedIn(this.account, this.token);

  @override
  List<Object?> get props => [account, token];
}

/// Emitted once the application user has successfully logged out.
class AppLoggedOut extends AuthenticationEvent {
  const AppLoggedOut();
}
