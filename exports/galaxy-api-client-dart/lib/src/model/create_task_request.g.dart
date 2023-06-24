// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTaskRequest extends CreateTaskRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<String> shareWithIds;

  factory _$CreateTaskRequest(
          [void Function(CreateTaskRequestBuilder)? updates]) =>
      (new CreateTaskRequestBuilder()..update(updates))._build();

  _$CreateTaskRequest._(
      {required this.name, this.description, required this.shareWithIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreateTaskRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        shareWithIds, r'CreateTaskRequest', 'shareWithIds');
  }

  @override
  CreateTaskRequest rebuild(void Function(CreateTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTaskRequestBuilder toBuilder() =>
      new CreateTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTaskRequest &&
        name == other.name &&
        description == other.description &&
        shareWithIds == other.shareWithIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, shareWithIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTaskRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('shareWithIds', shareWithIds))
        .toString();
  }
}

class CreateTaskRequestBuilder
    implements Builder<CreateTaskRequest, CreateTaskRequestBuilder> {
  _$CreateTaskRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _shareWithIds;
  ListBuilder<String> get shareWithIds =>
      _$this._shareWithIds ??= new ListBuilder<String>();
  set shareWithIds(ListBuilder<String>? shareWithIds) =>
      _$this._shareWithIds = shareWithIds;

  CreateTaskRequestBuilder() {
    CreateTaskRequest._defaults(this);
  }

  CreateTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _shareWithIds = $v.shareWithIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTaskRequest;
  }

  @override
  void update(void Function(CreateTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTaskRequest build() => _build();

  _$CreateTaskRequest _build() {
    _$CreateTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTaskRequest._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateTaskRequest', 'name'),
              description: description,
              shareWithIds: shareWithIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shareWithIds';
        shareWithIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
