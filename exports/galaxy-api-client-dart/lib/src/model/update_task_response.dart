//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/task.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_task_response.g.dart';

/// UpdateTaskResponse
///
/// Properties:
/// * [task] 
@BuiltValue()
abstract class UpdateTaskResponse implements Built<UpdateTaskResponse, UpdateTaskResponseBuilder> {
  @BuiltValueField(wireName: r'task')
  Task get task;

  UpdateTaskResponse._();

  factory UpdateTaskResponse([void updates(UpdateTaskResponseBuilder b)]) = _$UpdateTaskResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTaskResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTaskResponse> get serializer => _$UpdateTaskResponseSerializer();
}

class _$UpdateTaskResponseSerializer implements PrimitiveSerializer<UpdateTaskResponse> {
  @override
  final Iterable<Type> types = const [UpdateTaskResponse, _$UpdateTaskResponse];

  @override
  final String wireName = r'UpdateTaskResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTaskResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'task';
    yield serializers.serialize(
      object.task,
      specifiedType: const FullType(Task),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTaskResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTaskResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'task':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Task),
          ) as Task;
          result.task.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTaskResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTaskResponseBuilder();
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

