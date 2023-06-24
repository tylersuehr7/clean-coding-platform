//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_access_token_response.g.dart';

/// RefreshAccessTokenResponse
///
/// Properties:
/// * [access] 
/// * [refresh] 
@BuiltValue()
abstract class RefreshAccessTokenResponse implements Built<RefreshAccessTokenResponse, RefreshAccessTokenResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  String get access;

  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  RefreshAccessTokenResponse._();

  factory RefreshAccessTokenResponse([void updates(RefreshAccessTokenResponseBuilder b)]) = _$RefreshAccessTokenResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshAccessTokenResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshAccessTokenResponse> get serializer => _$RefreshAccessTokenResponseSerializer();
}

class _$RefreshAccessTokenResponseSerializer implements PrimitiveSerializer<RefreshAccessTokenResponse> {
  @override
  final Iterable<Type> types = const [RefreshAccessTokenResponse, _$RefreshAccessTokenResponse];

  @override
  final String wireName = r'RefreshAccessTokenResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshAccessTokenResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshAccessTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefreshAccessTokenResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefreshAccessTokenResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshAccessTokenResponseBuilder();
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

