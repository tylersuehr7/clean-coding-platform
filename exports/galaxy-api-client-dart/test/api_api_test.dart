import 'package:test/test.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';


/// tests for ApiApi
void main() {
  final instance = GalaxyApiClientDart().getApiApi();

  group(ApiApi, () {
    // OpenApi3 schema for this API. Format can be selected via content negotiation.  - YAML: application/vnd.oai.openapi - JSON: application/vnd.oai.openapi+json
    //
    //Future<JsonObject> apiSchemaRetrieve({ String format, String lang }) async
    test('test apiSchemaRetrieve', () async {
      // TODO
    });

  });
}
