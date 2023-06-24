//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_access_token_request.g.dart';

/// RefreshAccessTokenRequest
///
/// Properties:
/// * [refresh] 
@BuiltValue()
abstract class RefreshAccessTokenRequest implements Built<RefreshAccessTokenRequest, RefreshAccessTokenRequestBuilder> {
  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  RefreshAccessTokenRequest._();

  factory RefreshAccessTokenRequest([void updates(RefreshAccessTokenRequestBuilder b)]) = _$RefreshAccessTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshAccessTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshAccessTokenRequest> get serializer => _$RefreshAccessTokenRequestSerializer();
}

class _$RefreshAccessTokenRequestSerializer implements PrimitiveSerializer<RefreshAccessTokenRequest> {
  @override
  final Iterable<Type> types = const [RefreshAccessTokenRequest, _$RefreshAccessTokenRequest];

  @override
  final String wireName = r'RefreshAccessTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefreshAccessTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefreshAccessTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshAccessTokenRequestBuilder();
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

