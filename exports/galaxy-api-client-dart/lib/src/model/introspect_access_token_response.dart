//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'introspect_access_token_response.g.dart';

/// IntrospectAccessTokenResponse
///
/// Properties:
/// * [account] 
@BuiltValue()
abstract class IntrospectAccessTokenResponse implements Built<IntrospectAccessTokenResponse, IntrospectAccessTokenResponseBuilder> {
  @BuiltValueField(wireName: r'account')
  Account get account;

  IntrospectAccessTokenResponse._();

  factory IntrospectAccessTokenResponse([void updates(IntrospectAccessTokenResponseBuilder b)]) = _$IntrospectAccessTokenResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntrospectAccessTokenResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntrospectAccessTokenResponse> get serializer => _$IntrospectAccessTokenResponseSerializer();
}

class _$IntrospectAccessTokenResponseSerializer implements PrimitiveSerializer<IntrospectAccessTokenResponse> {
  @override
  final Iterable<Type> types = const [IntrospectAccessTokenResponse, _$IntrospectAccessTokenResponse];

  @override
  final String wireName = r'IntrospectAccessTokenResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntrospectAccessTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntrospectAccessTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntrospectAccessTokenResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Account),
          ) as Account;
          result.account.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntrospectAccessTokenResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntrospectAccessTokenResponseBuilder();
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

