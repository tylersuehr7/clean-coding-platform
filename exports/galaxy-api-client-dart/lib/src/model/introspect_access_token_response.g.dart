// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introspect_access_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntrospectAccessTokenResponse extends IntrospectAccessTokenResponse {
  @override
  final Account account;

  factory _$IntrospectAccessTokenResponse(
          [void Function(IntrospectAccessTokenResponseBuilder)? updates]) =>
      (new IntrospectAccessTokenResponseBuilder()..update(updates))._build();

  _$IntrospectAccessTokenResponse._({required this.account}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'IntrospectAccessTokenResponse', 'account');
  }

  @override
  IntrospectAccessTokenResponse rebuild(
          void Function(IntrospectAccessTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntrospectAccessTokenResponseBuilder toBuilder() =>
      new IntrospectAccessTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntrospectAccessTokenResponse && account == other.account;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntrospectAccessTokenResponse')
          ..add('account', account))
        .toString();
  }
}

class IntrospectAccessTokenResponseBuilder
    implements
        Builder<IntrospectAccessTokenResponse,
            IntrospectAccessTokenResponseBuilder> {
  _$IntrospectAccessTokenResponse? _$v;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= new AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  IntrospectAccessTokenResponseBuilder() {
    IntrospectAccessTokenResponse._defaults(this);
  }

  IntrospectAccessTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntrospectAccessTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntrospectAccessTokenResponse;
  }

  @override
  void update(void Function(IntrospectAccessTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntrospectAccessTokenResponse build() => _build();

  _$IntrospectAccessTokenResponse _build() {
    _$IntrospectAccessTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$IntrospectAccessTokenResponse._(account: account.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IntrospectAccessTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
