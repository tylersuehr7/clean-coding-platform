// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_access_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshAccessTokenResponse extends RefreshAccessTokenResponse {
  @override
  final String access;
  @override
  final String refresh;

  factory _$RefreshAccessTokenResponse(
          [void Function(RefreshAccessTokenResponseBuilder)? updates]) =>
      (new RefreshAccessTokenResponseBuilder()..update(updates))._build();

  _$RefreshAccessTokenResponse._({required this.access, required this.refresh})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        access, r'RefreshAccessTokenResponse', 'access');
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'RefreshAccessTokenResponse', 'refresh');
  }

  @override
  RefreshAccessTokenResponse rebuild(
          void Function(RefreshAccessTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshAccessTokenResponseBuilder toBuilder() =>
      new RefreshAccessTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshAccessTokenResponse &&
        access == other.access &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshAccessTokenResponse')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class RefreshAccessTokenResponseBuilder
    implements
        Builder<RefreshAccessTokenResponse, RefreshAccessTokenResponseBuilder> {
  _$RefreshAccessTokenResponse? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  RefreshAccessTokenResponseBuilder() {
    RefreshAccessTokenResponse._defaults(this);
  }

  RefreshAccessTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshAccessTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshAccessTokenResponse;
  }

  @override
  void update(void Function(RefreshAccessTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshAccessTokenResponse build() => _build();

  _$RefreshAccessTokenResponse _build() {
    final _$result = _$v ??
        new _$RefreshAccessTokenResponse._(
            access: BuiltValueNullFieldError.checkNotNull(
                access, r'RefreshAccessTokenResponse', 'access'),
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'RefreshAccessTokenResponse', 'refresh'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
