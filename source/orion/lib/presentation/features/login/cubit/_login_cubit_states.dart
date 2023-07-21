part of login;

class _LoginScreenUiState extends Equatable {
  const _LoginScreenUiState({
    required this.isLoading,
    required this.isValidationError,
    this.errorMessage,
  });

  const _LoginScreenUiState.initial(): this(
    isLoading: false,
    isValidationError: true,
    errorMessage: null,
  );

  _LoginScreenUiState copyWith({
    bool? isLoading,
    bool? isValidationError,
    String? errorMessage,
  }) {
    return _LoginScreenUiState(
      isLoading: isLoading ?? this.isLoading,
      isValidationError: isValidationError ?? this.isValidationError,
      errorMessage: errorMessage,
    );
  }

  final bool isLoading;
  final bool isValidationError;
  final String? errorMessage;

  bool get isDisableSubmit => isLoading || isValidationError;

  @override
  List<Object?> get props => [isLoading, isValidationError, errorMessage];
}
