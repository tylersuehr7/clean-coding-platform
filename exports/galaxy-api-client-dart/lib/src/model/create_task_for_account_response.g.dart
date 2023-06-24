// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_for_account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTaskForAccountResponse extends CreateTaskForAccountResponse {
  @override
  final Task task;

  factory _$CreateTaskForAccountResponse(
          [void Function(CreateTaskForAccountResponseBuilder)? updates]) =>
      (new CreateTaskForAccountResponseBuilder()..update(updates))._build();

  _$CreateTaskForAccountResponse._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        task, r'CreateTaskForAccountResponse', 'task');
  }

  @override
  CreateTaskForAccountResponse rebuild(
          void Function(CreateTaskForAccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTaskForAccountResponseBuilder toBuilder() =>
      new CreateTaskForAccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTaskForAccountResponse && task == other.task;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, task.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTaskForAccountResponse')
          ..add('task', task))
        .toString();
  }
}

class CreateTaskForAccountResponseBuilder
    implements
        Builder<CreateTaskForAccountResponse,
            CreateTaskForAccountResponseBuilder> {
  _$CreateTaskForAccountResponse? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  CreateTaskForAccountResponseBuilder() {
    CreateTaskForAccountResponse._defaults(this);
  }

  CreateTaskForAccountResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTaskForAccountResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTaskForAccountResponse;
  }

  @override
  void update(void Function(CreateTaskForAccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTaskForAccountResponse build() => _build();

  _$CreateTaskForAccountResponse _build() {
    _$CreateTaskForAccountResponse _$result;
    try {
      _$result =
          _$v ?? new _$CreateTaskForAccountResponse._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTaskForAccountResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
