import 'package:test/test.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';


/// tests for AccountApi
void main() {
  final instance = GalaxyApiClientDart().getAccountApi();

  group(AccountApi, () {
    //Future<CreateNewAccountResponse> createNewAccount(CreateAccountRequest createAccountRequest) async
    test('test createNewAccount', () async {
      // TODO
    });

  });
}
