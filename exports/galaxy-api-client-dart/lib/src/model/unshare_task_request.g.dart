// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unshare_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnshareTaskRequest extends UnshareTaskRequest {
  @override
  final BuiltList<String> accountIds;

  factory _$UnshareTaskRequest(
          [void Function(UnshareTaskRequestBuilder)? updates]) =>
      (new UnshareTaskRequestBuilder()..update(updates))._build();

  _$UnshareTaskRequest._({required this.accountIds}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountIds, r'UnshareTaskRequest', 'accountIds');
  }

  @override
  UnshareTaskRequest rebuild(
          void Function(UnshareTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnshareTaskRequestBuilder toBuilder() =>
      new UnshareTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnshareTaskRequest && accountIds == other.accountIds;
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
    return (newBuiltValueToStringHelper(r'UnshareTaskRequest')
          ..add('accountIds', accountIds))
        .toString();
  }
}

class UnshareTaskRequestBuilder
    implements Builder<UnshareTaskRequest, UnshareTaskRequestBuilder> {
  _$UnshareTaskRequest? _$v;

  ListBuilder<String>? _accountIds;
  ListBuilder<String> get accountIds =>
      _$this._accountIds ??= new ListBuilder<String>();
  set accountIds(ListBuilder<String>? accountIds) =>
      _$this._accountIds = accountIds;

  UnshareTaskRequestBuilder() {
    UnshareTaskRequest._defaults(this);
  }

  UnshareTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIds = $v.accountIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnshareTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnshareTaskRequest;
  }

  @override
  void update(void Function(UnshareTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnshareTaskRequest build() => _build();

  _$UnshareTaskRequest _build() {
    _$UnshareTaskRequest _$result;
    try {
      _$result =
          _$v ?? new _$UnshareTaskRequest._(accountIds: accountIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountIds';
        accountIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnshareTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
