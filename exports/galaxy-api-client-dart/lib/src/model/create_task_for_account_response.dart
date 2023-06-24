//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/task.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_task_for_account_response.g.dart';

/// CreateTaskForAccountResponse
///
/// Properties:
/// * [task] 
@BuiltValue()
abstract class CreateTaskForAccountResponse implements Built<CreateTaskForAccountResponse, CreateTaskForAccountResponseBuilder> {
  @BuiltValueField(wireName: r'task')
  Task get task;

  CreateTaskForAccountResponse._();

  factory CreateTaskForAccountResponse([void updates(CreateTaskForAccountResponseBuilder b)]) = _$CreateTaskForAccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTaskForAccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTaskForAccountResponse> get serializer => _$CreateTaskForAccountResponseSerializer();
}

class _$CreateTaskForAccountResponseSerializer implements PrimitiveSerializer<CreateTaskForAccountResponse> {
  @override
  final Iterable<Type> types = const [CreateTaskForAccountResponse, _$CreateTaskForAccountResponse];

  @override
  final String wireName = r'CreateTaskForAccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTaskForAccountResponse object, {
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
    CreateTaskForAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTaskForAccountResponseBuilder result,
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
  CreateTaskForAccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTaskForAccountResponseBuilder();
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

