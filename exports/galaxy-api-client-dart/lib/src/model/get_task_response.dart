//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/task.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_task_response.g.dart';

/// GetTaskResponse
///
/// Properties:
/// * [task] 
@BuiltValue()
abstract class GetTaskResponse implements Built<GetTaskResponse, GetTaskResponseBuilder> {
  @BuiltValueField(wireName: r'task')
  Task get task;

  GetTaskResponse._();

  factory GetTaskResponse([void updates(GetTaskResponseBuilder b)]) = _$GetTaskResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTaskResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTaskResponse> get serializer => _$GetTaskResponseSerializer();
}

class _$GetTaskResponseSerializer implements PrimitiveSerializer<GetTaskResponse> {
  @override
  final Iterable<Type> types = const [GetTaskResponse, _$GetTaskResponse];

  @override
  final String wireName = r'GetTaskResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTaskResponse object, {
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
    GetTaskResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTaskResponseBuilder result,
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
  GetTaskResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTaskResponseBuilder();
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

