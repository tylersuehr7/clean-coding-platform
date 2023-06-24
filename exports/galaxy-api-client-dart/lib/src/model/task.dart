//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:galaxy_api_client_dart/src/model/task_shared_account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task.g.dart';

/// Task
///
/// Properties:
/// * [id] 
/// * [name] - Brief name of this task.
/// * [description] - Optional. Description or details of this task.
/// * [ownerId] - Account who owns this task.
/// * [ownerDisplayName] 
/// * [sharedWith] 
/// * [completedOn] - Optional. Timestamp in which this task was marked completed.
/// * [created] 
/// * [updated] 
@BuiltValue()
abstract class Task implements Built<Task, TaskBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Brief name of this task.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Optional. Description or details of this task.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Account who owns this task.
  @BuiltValueField(wireName: r'owner_id')
  String get ownerId;

  @BuiltValueField(wireName: r'owner_display_name')
  String get ownerDisplayName;

  @BuiltValueField(wireName: r'shared_with')
  BuiltList<TaskSharedAccount> get sharedWith;

  /// Optional. Timestamp in which this task was marked completed.
  @BuiltValueField(wireName: r'completed_on')
  DateTime? get completedOn;

  @BuiltValueField(wireName: r'created')
  DateTime get created;

  @BuiltValueField(wireName: r'updated')
  DateTime get updated;

  Task._();

  factory Task([void updates(TaskBuilder b)]) = _$Task;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Task> get serializer => _$TaskSerializer();
}

class _$TaskSerializer implements PrimitiveSerializer<Task> {
  @override
  final Iterable<Type> types = const [Task, _$Task];

  @override
  final String wireName = r'Task';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Task object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'owner_id';
    yield serializers.serialize(
      object.ownerId,
      specifiedType: const FullType(String),
    );
    yield r'owner_display_name';
    yield serializers.serialize(
      object.ownerDisplayName,
      specifiedType: const FullType(String),
    );
    yield r'shared_with';
    yield serializers.serialize(
      object.sharedWith,
      specifiedType: const FullType(BuiltList, [FullType(TaskSharedAccount)]),
    );
    if (object.completedOn != null) {
      yield r'completed_on';
      yield serializers.serialize(
        object.completedOn,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'created';
    yield serializers.serialize(
      object.created,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated';
    yield serializers.serialize(
      object.updated,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Task object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'owner_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerId = valueDes;
          break;
        case r'owner_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerDisplayName = valueDes;
          break;
        case r'shared_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TaskSharedAccount)]),
          ) as BuiltList<TaskSharedAccount>;
          result.sharedWith.replace(valueDes);
          break;
        case r'completed_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.completedOn = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.created = valueDes;
          break;
        case r'updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Task deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

