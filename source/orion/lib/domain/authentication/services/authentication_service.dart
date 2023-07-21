import 'package:dio/dio.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';
import 'package:orion/common/galaxy_client.dart';
import 'package:orion/domain/authentication/models/api_token.dart';
import 'package:orion/domain/authentication/models/auth_context.dart';
import 'package:orion/domain/authentication/repositories/api_token_repository.dart';
import 'package:orion/domain/authentication/repositories/application_user_repository.dart';

class AuthenticationService {
  final GalaxyApiClientDart _galaxyClient;
  final IApiTokenRepository _apiTokenRepo;
  final IApplicationUserRepository _appUserRepo;
  const AuthenticationService(this._galaxyClient, this._apiTokenRepo, this._appUserRepo);

  /// Loads the current application user.
  ///
  /// [returns] the application user (or null if not exists)
  /// [throws] NoApplicationUserException – when
  Future<Account> loadApplicationUser() async {
    String? appUserId = await _appUserRepo.getUserId();
    ApiToken? apiToken = await _apiTokenRepo.getApiToken();
    if (appUserId == null || apiToken == null) {
      throw const NoApplicationUserException();
    }

    // Refresh the access token if needed
    if (DateTime.now().isAfter(apiToken.expiration)) {
      apiToken = await refreshAccessToken(apiToken.refresh);
      _apiTokenRepo.setApiToken(apiToken);
    }

    // Update client authorization
    _galaxyClient.setApiKey("Authorization", "Bearer ${apiToken.access}");

    return (await _galaxyClient.getIdentityApi().introspectAccessToken()).data!.account;
  }

  /// Gets a refreshed access token to the server.
  ///
  /// [refresh] the refresh token
  /// [returns] the successfully refreshed access token
  Future<ApiToken> refreshAccessToken(final String refresh) async {
    try {
      final RefreshAccessTokenRequestBuilder builder = RefreshAccessTokenRequestBuilder();
      builder.refresh = refresh;

      final RefreshAccessTokenResponse response = (await _galaxyClient.getIdentityApi()
          .refreshAccessToken(refreshAccessTokenRequest: builder.build())
      ).data!;

      return ApiToken(response.access, response.refresh);
    } on DioError catch(ex) {
      if (ex.response?.statusCode == 401) {
        throw const ExpiredRefreshTokenException();
      }
      rethrow;
    }
  }

  Future<void> createApplicationUserSession(final Account account, final ApiToken token) async {
    // Persist the application user and api token
    _apiTokenRepo.setApiToken(token);
    _appUserRepo.setUserId(account.id);

    // Update client authorization
    _galaxyClient.setApiKey("Authorization", "Bearer ${token.access}");
  }

  Future<void> destroyApplicationUserSession() async {
    _galaxyClient.destroyBearerToken();
    _apiTokenRepo.destroy();
    _appUserRepo.destroy();
  }

  /// Authenticates the given credentials for application user.
  ///
  /// [username] the username credential to authenticate
  /// [password] the password credential to authenticate
  /// [returns] the successful authentication context
  Future<AuthContext> login(final String username, final String password) async {
    final AcquireAccessTokenRequestBuilder builder = AcquireAccessTokenRequestBuilder();
    builder.username = username;
    builder.password = password;

    final AcquireAccessTokenResponse response = (await _galaxyClient.getIdentityApi()
        .acquireAccessToken(acquireAccessTokenRequest: builder.build())
    ).data!;

    return AuthContext(response.account, ApiToken(response.access, response.refresh));
  }
}

/// Thrown when no application user is available.
class NoApplicationUserException implements Exception {
  const NoApplicationUserException();
}

/// Thrown when refresh token is expired and user must login again.
class ExpiredRefreshTokenException implements Exception {
  const ExpiredRefreshTokenException();
}
