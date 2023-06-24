//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_task_request.g.dart';

/// UpdateTaskRequest
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [completedOn] 
/// * [deletedOn] 
@BuiltValue()
abstract class UpdateTaskRequest implements Built<UpdateTaskRequest, UpdateTaskRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'completed_on')
  bool? get completedOn;

  @BuiltValueField(wireName: r'deleted_on')
  bool? get deletedOn;

  UpdateTaskRequest._();

  factory UpdateTaskRequest([void updates(UpdateTaskRequestBuilder b)]) = _$UpdateTaskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTaskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTaskRequest> get serializer => _$UpdateTaskRequestSerializer();
}

class _$UpdateTaskRequestSerializer implements PrimitiveSerializer<UpdateTaskRequest> {
  @override
  final Iterable<Type> types = const [UpdateTaskRequest, _$UpdateTaskRequest];

  @override
  final String wireName = r'UpdateTaskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.completedOn != null) {
      yield r'completed_on';
      yield serializers.serialize(
        object.completedOn,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.deletedOn != null) {
      yield r'deleted_on';
      yield serializers.serialize(
        object.deletedOn,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTaskRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'completed_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.completedOn = valueDes;
          break;
        case r'deleted_on':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.deletedOn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTaskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTaskRequestBuilder();
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

