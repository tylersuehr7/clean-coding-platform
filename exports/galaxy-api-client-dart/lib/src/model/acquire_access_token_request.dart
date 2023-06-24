//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'acquire_access_token_request.g.dart';

/// AcquireAccessTokenRequest
///
/// Properties:
/// * [username] 
/// * [password] 
@BuiltValue()
abstract class AcquireAccessTokenRequest implements Built<AcquireAccessTokenRequest, AcquireAccessTokenRequestBuilder> {
  @BuiltValueField(wireName: r'username')
  String get username;

  @BuiltValueField(wireName: r'password')
  String get password;

  AcquireAccessTokenRequest._();

  factory AcquireAccessTokenRequest([void updates(AcquireAccessTokenRequestBuilder b)]) = _$AcquireAccessTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AcquireAccessTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AcquireAccessTokenRequest> get serializer => _$AcquireAccessTokenRequestSerializer();
}

class _$AcquireAccessTokenRequestSerializer implements PrimitiveSerializer<AcquireAccessTokenRequest> {
  @override
  final Iterable<Type> types = const [AcquireAccessTokenRequest, _$AcquireAccessTokenRequest];

  @override
  final String wireName = r'AcquireAccessTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AcquireAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'username';
    yield serializers.serialize(
      object.username,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AcquireAccessTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AcquireAccessTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AcquireAccessTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcquireAccessTokenRequestBuilder();
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

