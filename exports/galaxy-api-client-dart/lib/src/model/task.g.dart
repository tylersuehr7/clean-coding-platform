// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Task extends Task {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String ownerId;
  @override
  final String ownerDisplayName;
  @override
  final BuiltList<TaskSharedAccount> sharedWith;
  @override
  final DateTime? completedOn;
  @override
  final DateTime created;
  @override
  final DateTime updated;

  factory _$Task([void Function(TaskBuilder)? updates]) =>
      (new TaskBuilder()..update(updates))._build();

  _$Task._(
      {required this.id,
      required this.name,
      this.description,
      required this.ownerId,
      required this.ownerDisplayName,
      required this.sharedWith,
      this.completedOn,
      required this.created,
      required this.updated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Task', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Task', 'name');
    BuiltValueNullFieldError.checkNotNull(ownerId, r'Task', 'ownerId');
    BuiltValueNullFieldError.checkNotNull(
        ownerDisplayName, r'Task', 'ownerDisplayName');
    BuiltValueNullFieldError.checkNotNull(sharedWith, r'Task', 'sharedWith');
    BuiltValueNullFieldError.checkNotNull(created, r'Task', 'created');
    BuiltValueNullFieldError.checkNotNull(updated, r'Task', 'updated');
  }

  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => new TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        ownerId == other.ownerId &&
        ownerDisplayName == other.ownerDisplayName &&
        sharedWith == other.sharedWith &&
        completedOn == other.completedOn &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ownerDisplayName.hashCode);
    _$hash = $jc(_$hash, sharedWith.hashCode);
    _$hash = $jc(_$hash, completedOn.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Task')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('ownerId', ownerId)
          ..add('ownerDisplayName', ownerDisplayName)
          ..add('sharedWith', sharedWith)
          ..add('completedOn', completedOn)
          ..add('created', created)
          ..add('updated', updated))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ownerDisplayName;
  String? get ownerDisplayName => _$this._ownerDisplayName;
  set ownerDisplayName(String? ownerDisplayName) =>
      _$this._ownerDisplayName = ownerDisplayName;

  ListBuilder<TaskSharedAccount>? _sharedWith;
  ListBuilder<TaskSharedAccount> get sharedWith =>
      _$this._sharedWith ??= new ListBuilder<TaskSharedAccount>();
  set sharedWith(ListBuilder<TaskSharedAccount>? sharedWith) =>
      _$this._sharedWith = sharedWith;

  DateTime? _completedOn;
  DateTime? get completedOn => _$this._completedOn;
  set completedOn(DateTime? completedOn) => _$this._completedOn = completedOn;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  DateTime? _updated;
  DateTime? get updated => _$this._updated;
  set updated(DateTime? updated) => _$this._updated = updated;

  TaskBuilder() {
    Task._defaults(this);
  }

  TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _ownerId = $v.ownerId;
      _ownerDisplayName = $v.ownerDisplayName;
      _sharedWith = $v.sharedWith.toBuilder();
      _completedOn = $v.completedOn;
      _created = $v.created;
      _updated = $v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Task build() => _build();

  _$Task _build() {
    _$Task _$result;
    try {
      _$result = _$v ??
          new _$Task._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Task', 'id'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'Task', 'name'),
              description: description,
              ownerId: BuiltValueNullFieldError.checkNotNull(
                  ownerId, r'Task', 'ownerId'),
              ownerDisplayName: BuiltValueNullFieldError.checkNotNull(
                  ownerDisplayName, r'Task', 'ownerDisplayName'),
              sharedWith: sharedWith.build(),
              completedOn: completedOn,
              created: BuiltValueNullFieldError.checkNotNull(
                  created, r'Task', 'created'),
              updated: BuiltValueNullFieldError.checkNotNull(
                  updated, r'Task', 'updated'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sharedWith';
        sharedWith.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Task', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
