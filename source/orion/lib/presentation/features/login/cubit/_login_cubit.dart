part of login;

class _LoginCubit extends Cubit<_LoginScreenUiState> {
  final AuthenticationService _authService = appInjector.get<AuthenticationService>();
  final AuthenticationBloc _authBloc;

  _LoginCubit(this._authBloc): super(const _LoginScreenUiState.initial());

  Future<void> performLogin(final String username, final String password) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    try {
      final AuthContext context = await _authService.login(username, password);
      _authBloc.add(AppLoggedIn(context.account, context.token));
    } on GalaxyClientError catch(ex) {
      emit(state.copyWith(isLoading: false, errorMessage: ex.message));
    }
  }

  String? validateUsername(final String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(isValidationError: true));
      return "Username is required!";
    }
    emit(state.copyWith(isValidationError: false));
    return null;
  }

  String? validatePassword(final String? value) {
    if (value == null || value.isEmpty) {
      emit(state.copyWith(isValidationError: true));
      return "Password is required!";
    }
    emit(state.copyWith(isValidationError: false));
    return null;
  }
}
