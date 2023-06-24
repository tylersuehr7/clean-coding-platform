# galaxy_api_client_dart.api.HealthApi

## Load the API package
```dart
import 'package:galaxy_api_client_dart/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping**](HealthApi.md#ping) | **GET** /health/ping | 


# **ping**
> ping()



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getHealthApi();

try {
    api.ping();
} catch on DioError (e) {
    print('Exception when calling HealthApi->ping: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

