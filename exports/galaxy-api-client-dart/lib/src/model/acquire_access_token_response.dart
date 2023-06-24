//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'acquire_access_token_response.g.dart';

/// AcquireAccessTokenResponse
///
/// Properties:
/// * [access] 
/// * [refresh] 
/// * [account] 
@BuiltValue()
abstract class AcquireAccessTokenResponse implements Built<AcquireAccessTokenResponse, AcquireAccessTokenResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  String get access;

  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  @BuiltValueField(wireName: r'account')
  Account get account;

  AcquireAccessTokenResponse._();

  factory AcquireAccessTokenResponse([void updates(AcquireAccessTokenResponseBuilder b)]) = _$AcquireAccessTokenResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AcquireAccessTokenResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AcquireAccessTokenResponse> get serializer => _$AcquireAccessTokenResponseSerializer();
}

class _$AcquireAccessTokenResponseSerializer implements PrimitiveSerializer<AcquireAccessTokenResponse> {
  @override
  final Iterable<Type> types = const [AcquireAccessTokenResponse, _$AcquireAccessTokenResponse];

  @override
  final String wireName = r'AcquireAccessTokenResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AcquireAccessTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'access';
    yield serializers.serialize(
      object.access,
      specifiedType: const FullType(String),
    );
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(Account),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AcquireAccessTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AcquireAccessTokenResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.access = valueDes;
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
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
  AcquireAccessTokenResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcquireAccessTokenResponseBuilder();
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

