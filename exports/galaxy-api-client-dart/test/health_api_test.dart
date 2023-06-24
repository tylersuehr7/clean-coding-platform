import 'package:test/test.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';


/// tests for HealthApi
void main() {
  final instance = GalaxyApiClientDart().getHealthApi();

  group(HealthApi, () {
    //Future ping() async
    test('test ping', () async {
      // TODO
    });

  });
}
