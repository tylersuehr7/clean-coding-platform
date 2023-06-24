//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unshare_task_request.g.dart';

/// UnshareTaskRequest
///
/// Properties:
/// * [accountIds] 
@BuiltValue()
abstract class UnshareTaskRequest implements Built<UnshareTaskRequest, UnshareTaskRequestBuilder> {
  @BuiltValueField(wireName: r'account_ids')
  BuiltList<String> get accountIds;

  UnshareTaskRequest._();

  factory UnshareTaskRequest([void updates(UnshareTaskRequestBuilder b)]) = _$UnshareTaskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnshareTaskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnshareTaskRequest> get serializer => _$UnshareTaskRequestSerializer();
}

class _$UnshareTaskRequestSerializer implements PrimitiveSerializer<UnshareTaskRequest> {
  @override
  final Iterable<Type> types = const [UnshareTaskRequest, _$UnshareTaskRequest];

  @override
  final String wireName = r'UnshareTaskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnshareTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account_ids';
    yield serializers.serialize(
      object.accountIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UnshareTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UnshareTaskRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.accountIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnshareTaskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnshareTaskRequestBuilder();
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

