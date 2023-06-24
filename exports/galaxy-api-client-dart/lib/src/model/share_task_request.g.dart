// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareTaskRequest extends ShareTaskRequest {
  @override
  final BuiltList<String> accountIds;

  factory _$ShareTaskRequest(
          [void Function(ShareTaskRequestBuilder)? updates]) =>
      (new ShareTaskRequestBuilder()..update(updates))._build();

  _$ShareTaskRequest._({required this.accountIds}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIds, r'ShareTaskRequest', 'accountIds');
  }

  @override
  ShareTaskRequest rebuild(void Function(ShareTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareTaskRequestBuilder toBuilder() =>
      new ShareTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareTaskRequest && accountIds == other.accountIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareTaskRequest')
          ..add('accountIds', accountIds))
        .toString();
  }
}

class ShareTaskRequestBuilder
    implements Builder<ShareTaskRequest, ShareTaskRequestBuilder> {
  _$ShareTaskRequest? _$v;

  ListBuilder<String>? _accountIds;
  ListBuilder<String> get accountIds =>
      _$this._accountIds ??= new ListBuilder<String>();
  set accountIds(ListBuilder<String>? accountIds) =>
      _$this._accountIds = accountIds;

  ShareTaskRequestBuilder() {
    ShareTaskRequest._defaults(this);
  }

  ShareTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIds = $v.accountIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShareTaskRequest;
  }

  @override
  void update(void Function(ShareTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareTaskRequest build() => _build();

  _$ShareTaskRequest _build() {
    _$ShareTaskRequest _$result;
    try {
      _$result =
          _$v ?? new _$ShareTaskRequest._(accountIds: accountIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountIds';
        accountIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ShareTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
