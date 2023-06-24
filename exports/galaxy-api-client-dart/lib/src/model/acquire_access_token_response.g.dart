// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acquire_access_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcquireAccessTokenResponse extends AcquireAccessTokenResponse {
  @override
  final String access;
  @override
  final String refresh;
  @override
  final Account account;

  factory _$AcquireAccessTokenResponse(
          [void Function(AcquireAccessTokenResponseBuilder)? updates]) =>
      (new AcquireAccessTokenResponseBuilder()..update(updates))._build();

  _$AcquireAccessTokenResponse._(
      {required this.access, required this.refresh, required this.account})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        access, r'AcquireAccessTokenResponse', 'access');
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'AcquireAccessTokenResponse', 'refresh');
    BuiltValueNullFieldError.checkNotNull(
        account, r'AcquireAccessTokenResponse', 'account');
  }

  @override
  AcquireAccessTokenResponse rebuild(
          void Function(AcquireAccessTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcquireAccessTokenResponseBuilder toBuilder() =>
      new AcquireAccessTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcquireAccessTokenResponse &&
        access == other.access &&
        refresh == other.refresh &&
        account == other.account;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcquireAccessTokenResponse')
          ..add('access', access)
          ..add('refresh', refresh)
          ..add('account', account))
        .toString();
  }
}

class AcquireAccessTokenResponseBuilder
    implements
        Builder<AcquireAccessTokenResponse, AcquireAccessTokenResponseBuilder> {
  _$AcquireAccessTokenResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= new AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  AcquireAccessTokenResponseBuilder() {
    AcquireAccessTokenResponse._defaults(this);
  }

  AcquireAccessTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _account = $v.account.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcquireAccessTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcquireAccessTokenResponse;
  }

  @override
  void update(void Function(AcquireAccessTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcquireAccessTokenResponse build() => _build();

  _$AcquireAccessTokenResponse _build() {
    _$AcquireAccessTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$AcquireAccessTokenResponse._(
              access: BuiltValueNullFieldError.checkNotNull(
                  access, r'AcquireAccessTokenResponse', 'access'),
              refresh: BuiltValueNullFieldError.checkNotNull(
                  refresh, r'AcquireAccessTokenResponse', 'refresh'),
              account: account.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AcquireAccessTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
