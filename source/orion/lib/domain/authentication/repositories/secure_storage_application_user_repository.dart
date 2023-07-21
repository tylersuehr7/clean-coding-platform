import 'application_user_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageApplicationUserRepository implements IApplicationUserRepository {
  final FlutterSecureStorage storage;
  SecureStorageApplicationUserRepository(this.storage);

  @override
  Future<bool> hasUserId() {
    return storage.containsKey(key: _keyUserId);
  }

  @override
  Future<String?> getUserId() async {
    return storage.read(key: _keyUserId);
  }

  @override
  Future<void> setUserId(String userId) async {
    await storage.write(key: _keyUserId, value: userId);
  }

  @override
  Future<void> destroy() async {
    await storage.deleteAll();
  }

  static const String _keyUserId = "user";
}
