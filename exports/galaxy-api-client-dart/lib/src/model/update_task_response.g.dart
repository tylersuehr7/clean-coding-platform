// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTaskResponse extends UpdateTaskResponse {
  @override
  final Task task;

  factory _$UpdateTaskResponse(
          [void Function(UpdateTaskResponseBuilder)? updates]) =>
      (new UpdateTaskResponseBuilder()..update(updates))._build();

  _$UpdateTaskResponse._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, r'UpdateTaskResponse', 'task');
  }

  @override
  UpdateTaskResponse rebuild(
          void Function(UpdateTaskResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTaskResponseBuilder toBuilder() =>
      new UpdateTaskResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTaskResponse && task == other.task;
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
    return (newBuiltValueToStringHelper(r'UpdateTaskResponse')
          ..add('task', task))
        .toString();
  }
}

class UpdateTaskResponseBuilder
    implements Builder<UpdateTaskResponse, UpdateTaskResponseBuilder> {
  _$UpdateTaskResponse? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  UpdateTaskResponseBuilder() {
    UpdateTaskResponse._defaults(this);
  }

  UpdateTaskResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTaskResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTaskResponse;
  }

  @override
  void update(void Function(UpdateTaskResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTaskResponse build() => _build();

  _$UpdateTaskResponse _build() {
    _$UpdateTaskResponse _$result;
    try {
      _$result = _$v ?? new _$UpdateTaskResponse._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateTaskResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
