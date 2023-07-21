import 'package:orion/domain/authentication/models/api_token.dart';

abstract class IApiTokenRepository {
  Future<bool> hasApiToken();
  Future<ApiToken?> getApiToken();
  Future<void> setApiToken(ApiToken token);
  Future<void> destroy();
}
