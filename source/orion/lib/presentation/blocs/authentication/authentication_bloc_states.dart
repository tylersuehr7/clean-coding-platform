part of 'authentication_bloc.dart';

/// Describes a generic authentication state.
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

/// Indicates the authentication status is unknown.
class AuthenticationUnknown extends AuthenticationState {
  const AuthenticationUnknown();
}

/// Indicates the authentication status is logged-in.
class AuthenticationLoggedIn extends AuthenticationState {
  final Account account;
  const AuthenticationLoggedIn(this.account);

  @override
  List<Object?> get props => [account];
}

/// Indicates the authentication status is logged-out.
class AuthenticationLoggedOut extends AuthenticationState {
  const AuthenticationLoggedOut();
}
