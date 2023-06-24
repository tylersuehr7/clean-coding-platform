# galaxy_api_client_dart.api.AccountApi

## Load the API package
```dart
import 'package:galaxy_api_client_dart/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewAccount**](AccountApi.md#createnewaccount) | **POST** /v1/accounts | 


# **createNewAccount**
> CreateNewAccountResponse createNewAccount(createAccountRequest)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getAccountApi();
final CreateAccountRequest createAccountRequest = ; // CreateAccountRequest | 

try {
    final response = api.createNewAccount(createAccountRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->createNewAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md)|  | 

### Return type

[**CreateNewAccountResponse**](CreateNewAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

