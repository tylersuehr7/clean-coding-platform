//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_task_request.g.dart';

/// ShareTaskRequest
///
/// Properties:
/// * [accountIds] 
@BuiltValue()
abstract class ShareTaskRequest implements Built<ShareTaskRequest, ShareTaskRequestBuilder> {
  @BuiltValueField(wireName: r'account_ids')
  BuiltList<String> get accountIds;

  ShareTaskRequest._();

  factory ShareTaskRequest([void updates(ShareTaskRequestBuilder b)]) = _$ShareTaskRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareTaskRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareTaskRequest> get serializer => _$ShareTaskRequestSerializer();
}

class _$ShareTaskRequestSerializer implements PrimitiveSerializer<ShareTaskRequest> {
  @override
  final Iterable<Type> types = const [ShareTaskRequest, _$ShareTaskRequest];

  @override
  final String wireName = r'ShareTaskRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareTaskRequest object, {
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
    ShareTaskRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShareTaskRequestBuilder result,
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
  ShareTaskRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareTaskRequestBuilder();
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

