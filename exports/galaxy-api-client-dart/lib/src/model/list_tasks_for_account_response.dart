//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/task.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_tasks_for_account_response.g.dart';

/// ListTasksForAccountResponse
///
/// Properties:
/// * [next] 
/// * [prev] 
/// * [count] 
/// * [results] 
@BuiltValue()
abstract class ListTasksForAccountResponse implements Built<ListTasksForAccountResponse, ListTasksForAccountResponseBuilder> {
  @BuiltValueField(wireName: r'next')
  String? get next;

  @BuiltValueField(wireName: r'prev')
  String? get prev;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'results')
  BuiltList<Task> get results;

  ListTasksForAccountResponse._();

  factory ListTasksForAccountResponse([void updates(ListTasksForAccountResponseBuilder b)]) = _$ListTasksForAccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListTasksForAccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListTasksForAccountResponse> get serializer => _$ListTasksForAccountResponseSerializer();
}

class _$ListTasksForAccountResponseSerializer implements PrimitiveSerializer<ListTasksForAccountResponse> {
  @override
  final Iterable<Type> types = const [ListTasksForAccountResponse, _$ListTasksForAccountResponse];

  @override
  final String wireName = r'ListTasksForAccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListTasksForAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'next';
    yield object.next == null ? null : serializers.serialize(
      object.next,
      specifiedType: const FullType.nullable(String),
    );
    yield r'prev';
    yield object.prev == null ? null : serializers.serialize(
      object.prev,
      specifiedType: const FullType.nullable(String),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(Task)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListTasksForAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListTasksForAccountResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.next = valueDes;
          break;
        case r'prev':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prev = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Task)]),
          ) as BuiltList<Task>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListTasksForAccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTasksForAccountResponseBuilder();
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

