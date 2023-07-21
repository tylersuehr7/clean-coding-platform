import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:orion/domain/authentication/models/api_token.dart';

import 'api_token_repository.dart';

class SecureStorageApiTokenRepository implements IApiTokenRepository {
  final FlutterSecureStorage storage;
  SecureStorageApiTokenRepository(this.storage);

  @override
  Future<bool> hasApiToken() async {
    return storage.containsKey(key: _keyAccessToken);
  }

  @override
  Future<ApiToken?> getApiToken() async {
    final Map<String,String> data = await storage.readAll();

    final String? access = data[_keyAccessToken];
    final String? refresh = data[_keyRefreshToken];
    final String? expiresOn = data[_keyExpiresOn];

    if (access != null && refresh != null && expiresOn != null) {
      return ApiToken(access, refresh, expiration: DateTime.tryParse(expiresOn));
    }

    return null;
  }

  @override
  Future<void> setApiToken(ApiToken token) async {
    await storage.write(key: _keyAccessToken, value: token.access);
    await storage.write(key: _keyRefreshToken, value: token.refresh);
    await storage.write(key: _keyExpiresOn, value: token.expiration.toIso8601String());
  }

  @override
  Future<void> destroy() async {
    await storage.deleteAll();
  }

  static const String _keyAccessToken = "access";
  static const String _keyRefreshToken = "refresh";
  static const String _keyExpiresOn = "expires";
}
