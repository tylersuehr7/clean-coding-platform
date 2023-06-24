// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNewAccountResponse extends CreateNewAccountResponse {
  @override
  final String access;
  @override
  final String refresh;
  @override
  final Account account;

  factory _$CreateNewAccountResponse(
          [void Function(CreateNewAccountResponseBuilder)? updates]) =>
      (new CreateNewAccountResponseBuilder()..update(updates))._build();

  _$CreateNewAccountResponse._(
      {required this.access, required this.refresh, required this.account})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        access, r'CreateNewAccountResponse', 'access');
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'CreateNewAccountResponse', 'refresh');
    BuiltValueNullFieldError.checkNotNull(
        account, r'CreateNewAccountResponse', 'account');
  }

  @override
  CreateNewAccountResponse rebuild(
          void Function(CreateNewAccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNewAccountResponseBuilder toBuilder() =>
      new CreateNewAccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNewAccountResponse &&
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
    return (newBuiltValueToStringHelper(r'CreateNewAccountResponse')
          ..add('access', access)
          ..add('refresh', refresh)
          ..add('account', account))
        .toString();
  }
}

class CreateNewAccountResponseBuilder
    implements
        Builder<CreateNewAccountResponse, CreateNewAccountResponseBuilder> {
  _$CreateNewAccountResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  AccountBuilder? _account;
  AccountBuilder get account => _$this._account ??= new AccountBuilder();
  set account(AccountBuilder? account) => _$this._account = account;

  CreateNewAccountResponseBuilder() {
    CreateNewAccountResponse._defaults(this);
  }

  CreateNewAccountResponseBuilder get _$this {
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
  void replace(CreateNewAccountResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNewAccountResponse;
  }

  @override
  void update(void Function(CreateNewAccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNewAccountResponse build() => _build();

  _$CreateNewAccountResponse _build() {
    _$CreateNewAccountResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateNewAccountResponse._(
              access: BuiltValueNullFieldError.checkNotNull(
                  access, r'CreateNewAccountResponse', 'access'),
              refresh: BuiltValueNullFieldError.checkNotNull(
                  refresh, r'CreateNewAccountResponse', 'refresh'),
              account: account.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNewAccountResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
