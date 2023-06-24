import 'package:test/test.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';


/// tests for IdentityApi
void main() {
  final instance = GalaxyApiClientDart().getIdentityApi();

  group(IdentityApi, () {
    //Future<AcquireAccessTokenResponse> acquireAccessToken(AcquireAccessTokenRequest acquireAccessTokenRequest) async
    test('test acquireAccessToken', () async {
      // TODO
    });

    //Future<IntrospectAccessTokenResponse> introspectAccessToken() async
    test('test introspectAccessToken', () async {
      // TODO
    });

    // Proxy API for the underlying TokenRefreshView – so DRF can see this
    //
    //Future<RefreshAccessTokenResponse> refreshAccessToken(RefreshAccessTokenRequest refreshAccessTokenRequest) async
    test('test refreshAccessToken', () async {
      // TODO
    });

  });
}
