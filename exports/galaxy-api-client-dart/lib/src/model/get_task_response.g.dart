// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTaskResponse extends GetTaskResponse {
  @override
  final Task task;

  factory _$GetTaskResponse([void Function(GetTaskResponseBuilder)? updates]) =>
      (new GetTaskResponseBuilder()..update(updates))._build();

  _$GetTaskResponse._({required this.task}) : super._() {
    BuiltValueNullFieldError.checkNotNull(task, r'GetTaskResponse', 'task');
  }

  @override
  GetTaskResponse rebuild(void Function(GetTaskResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTaskResponseBuilder toBuilder() =>
      new GetTaskResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTaskResponse && task == other.task;
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
    return (newBuiltValueToStringHelper(r'GetTaskResponse')..add('task', task))
        .toString();
  }
}

class GetTaskResponseBuilder
    implements Builder<GetTaskResponse, GetTaskResponseBuilder> {
  _$GetTaskResponse? _$v;

  TaskBuilder? _task;
  TaskBuilder get task => _$this._task ??= new TaskBuilder();
  set task(TaskBuilder? task) => _$this._task = task;

  GetTaskResponseBuilder() {
    GetTaskResponse._defaults(this);
  }

  GetTaskResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTaskResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTaskResponse;
  }

  @override
  void update(void Function(GetTaskResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTaskResponse build() => _build();

  _$GetTaskResponse _build() {
    _$GetTaskResponse _$result;
    try {
      _$result = _$v ?? new _$GetTaskResponse._(task: task.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTaskResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
