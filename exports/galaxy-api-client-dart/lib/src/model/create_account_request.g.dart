// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAccountRequest extends CreateAccountRequest {
  @override
  final String username;
  @override
  final String password;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final bool? isResetPassword;
  @override
  final bool? isVerified;

  factory _$CreateAccountRequest(
          [void Function(CreateAccountRequestBuilder)? updates]) =>
      (new CreateAccountRequestBuilder()..update(updates))._build();

  _$CreateAccountRequest._(
      {required this.username,
      required this.password,
      this.firstName,
      this.lastName,
      this.isResetPassword,
      this.isVerified})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'CreateAccountRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, r'CreateAccountRequest', 'password');
  }

  @override
  CreateAccountRequest rebuild(
          void Function(CreateAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAccountRequestBuilder toBuilder() =>
      new CreateAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAccountRequest &&
        username == other.username &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        isResetPassword == other.isResetPassword &&
        isVerified == other.isVerified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, isResetPassword.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAccountRequest')
          ..add('username', username)
          ..add('password', password)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isResetPassword', isResetPassword)
          ..add('isVerified', isVerified))
        .toString();
  }
}

class CreateAccountRequestBuilder
    implements Builder<CreateAccountRequest, CreateAccountRequestBuilder> {
  _$CreateAccountRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  bool? _isResetPassword;
  bool? get isResetPassword => _$this._isResetPassword;
  set isResetPassword(bool? isResetPassword) =>
      _$this._isResetPassword = isResetPassword;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  CreateAccountRequestBuilder() {
    CreateAccountRequest._defaults(this);
  }

  CreateAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _isResetPassword = $v.isResetPassword;
      _isVerified = $v.isVerified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAccountRequest;
  }

  @override
  void update(void Function(CreateAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAccountRequest build() => _build();

  _$CreateAccountRequest _build() {
    final _$result = _$v ??
        new _$CreateAccountRequest._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'CreateAccountRequest', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'CreateAccountRequest', 'password'),
            firstName: firstName,
            lastName: lastName,
            isResetPassword: isResetPassword,
            isVerified: isVerified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
