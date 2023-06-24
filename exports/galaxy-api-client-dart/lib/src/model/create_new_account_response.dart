//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:galaxy_api_client_dart/src/model/account.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_new_account_response.g.dart';

/// CreateNewAccountResponse
///
/// Properties:
/// * [access] 
/// * [refresh] 
/// * [account] 
@BuiltValue()
abstract class CreateNewAccountResponse implements Built<CreateNewAccountResponse, CreateNewAccountResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  String get access;

  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  @BuiltValueField(wireName: r'account')
  Account get account;

  CreateNewAccountResponse._();

  factory CreateNewAccountResponse([void updates(CreateNewAccountResponseBuilder b)]) = _$CreateNewAccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateNewAccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateNewAccountResponse> get serializer => _$CreateNewAccountResponseSerializer();
}

class _$CreateNewAccountResponseSerializer implements PrimitiveSerializer<CreateNewAccountResponse> {
  @override
  final Iterable<Type> types = const [CreateNewAccountResponse, _$CreateNewAccountResponse];

  @override
  final String wireName = r'CreateNewAccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateNewAccountResponse object, {
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
    CreateNewAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateNewAccountResponseBuilder result,
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
  CreateNewAccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNewAccountResponseBuilder();
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

