abstract class IApplicationUserRepository {
  Future<bool> hasUserId();
  Future<String?> getUserId();
  Future<void> setUserId(String userId);
  Future<void> destroy();
}
