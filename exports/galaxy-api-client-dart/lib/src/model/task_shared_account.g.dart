// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_shared_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskSharedAccount extends TaskSharedAccount {
  @override
  final String id;
  @override
  final String displayName;

  factory _$TaskSharedAccount(
          [void Function(TaskSharedAccountBuilder)? updates]) =>
      (new TaskSharedAccountBuilder()..update(updates))._build();

  _$TaskSharedAccount._({required this.id, required this.displayName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TaskSharedAccount', 'id');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'TaskSharedAccount', 'displayName');
  }

  @override
  TaskSharedAccount rebuild(void Function(TaskSharedAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskSharedAccountBuilder toBuilder() =>
      new TaskSharedAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskSharedAccount &&
        id == other.id &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskSharedAccount')
          ..add('id', id)
          ..add('displayName', displayName))
        .toString();
  }
}

class TaskSharedAccountBuilder
    implements Builder<TaskSharedAccount, TaskSharedAccountBuilder> {
  _$TaskSharedAccount? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  TaskSharedAccountBuilder() {
    TaskSharedAccount._defaults(this);
  }

  TaskSharedAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskSharedAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskSharedAccount;
  }

  @override
  void update(void Function(TaskSharedAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskSharedAccount build() => _build();

  _$TaskSharedAccount _build() {
    final _$result = _$v ??
        new _$TaskSharedAccount._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TaskSharedAccount', 'id'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'TaskSharedAccount', 'displayName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
