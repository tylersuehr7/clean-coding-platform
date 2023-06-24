// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTaskRequest extends UpdateTaskRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool? completedOn;
  @override
  final bool? deletedOn;

  factory _$UpdateTaskRequest(
          [void Function(UpdateTaskRequestBuilder)? updates]) =>
      (new UpdateTaskRequestBuilder()..update(updates))._build();

  _$UpdateTaskRequest._(
      {required this.name, this.description, this.completedOn, this.deletedOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UpdateTaskRequest', 'name');
  }

  @override
  UpdateTaskRequest rebuild(void Function(UpdateTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTaskRequestBuilder toBuilder() =>
      new UpdateTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTaskRequest &&
        name == other.name &&
        description == other.description &&
        completedOn == other.completedOn &&
        deletedOn == other.deletedOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, completedOn.hashCode);
    _$hash = $jc(_$hash, deletedOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTaskRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('completedOn', completedOn)
          ..add('deletedOn', deletedOn))
        .toString();
  }
}

class UpdateTaskRequestBuilder
    implements Builder<UpdateTaskRequest, UpdateTaskRequestBuilder> {
  _$UpdateTaskRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _completedOn;
  bool? get completedOn => _$this._completedOn;
  set completedOn(bool? completedOn) => _$this._completedOn = completedOn;

  bool? _deletedOn;
  bool? get deletedOn => _$this._deletedOn;
  set deletedOn(bool? deletedOn) => _$this._deletedOn = deletedOn;

  UpdateTaskRequestBuilder() {
    UpdateTaskRequest._defaults(this);
  }

  UpdateTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _completedOn = $v.completedOn;
      _deletedOn = $v.deletedOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateTaskRequest;
  }

  @override
  void update(void Function(UpdateTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTaskRequest build() => _build();

  _$UpdateTaskRequest _build() {
    final _$result = _$v ??
        new _$UpdateTaskRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UpdateTaskRequest', 'name'),
            description: description,
            completedOn: completedOn,
            deletedOn: deletedOn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
