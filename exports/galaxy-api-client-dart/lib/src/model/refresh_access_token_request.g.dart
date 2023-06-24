// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_access_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshAccessTokenRequest extends RefreshAccessTokenRequest {
  @override
  final String refresh;

  factory _$RefreshAccessTokenRequest(
          [void Function(RefreshAccessTokenRequestBuilder)? updates]) =>
      (new RefreshAccessTokenRequestBuilder()..update(updates))._build();

  _$RefreshAccessTokenRequest._({required this.refresh}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'RefreshAccessTokenRequest', 'refresh');
  }

  @override
  RefreshAccessTokenRequest rebuild(
          void Function(RefreshAccessTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshAccessTokenRequestBuilder toBuilder() =>
      new RefreshAccessTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshAccessTokenRequest && refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshAccessTokenRequest')
          ..add('refresh', refresh))
        .toString();
  }
}

class RefreshAccessTokenRequestBuilder
    implements
        Builder<RefreshAccessTokenRequest, RefreshAccessTokenRequestBuilder> {
  _$RefreshAccessTokenRequest? _$v;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  RefreshAccessTokenRequestBuilder() {
    RefreshAccessTokenRequest._defaults(this);
  }

  RefreshAccessTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshAccessTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshAccessTokenRequest;
  }

  @override
  void update(void Function(RefreshAccessTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshAccessTokenRequest build() => _build();

  _$RefreshAccessTokenRequest _build() {
    final _$result = _$v ??
        new _$RefreshAccessTokenRequest._(
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'RefreshAccessTokenRequest', 'refresh'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
