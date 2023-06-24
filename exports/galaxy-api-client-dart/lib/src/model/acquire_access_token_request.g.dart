// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acquire_access_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcquireAccessTokenRequest extends AcquireAccessTokenRequest {
  @override
  final String username;
  @override
  final String password;

  factory _$AcquireAccessTokenRequest(
          [void Function(AcquireAccessTokenRequestBuilder)? updates]) =>
      (new AcquireAccessTokenRequestBuilder()..update(updates))._build();

  _$AcquireAccessTokenRequest._(
      {required this.username, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'AcquireAccessTokenRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, r'AcquireAccessTokenRequest', 'password');
  }

  @override
  AcquireAccessTokenRequest rebuild(
          void Function(AcquireAccessTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcquireAccessTokenRequestBuilder toBuilder() =>
      new AcquireAccessTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcquireAccessTokenRequest &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcquireAccessTokenRequest')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class AcquireAccessTokenRequestBuilder
    implements
        Builder<AcquireAccessTokenRequest, AcquireAccessTokenRequestBuilder> {
  _$AcquireAccessTokenRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AcquireAccessTokenRequestBuilder() {
    AcquireAccessTokenRequest._defaults(this);
  }

  AcquireAccessTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcquireAccessTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcquireAccessTokenRequest;
  }

  @override
  void update(void Function(AcquireAccessTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcquireAccessTokenRequest build() => _build();

  _$AcquireAccessTokenRequest _build() {
    final _$result = _$v ??
        new _$AcquireAccessTokenRequest._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'AcquireAccessTokenRequest', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'AcquireAccessTokenRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
