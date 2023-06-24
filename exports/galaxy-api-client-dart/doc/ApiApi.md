# galaxy_api_client_dart.api.ApiApi

## Load the API package
```dart
import 'package:galaxy_api_client_dart/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSchemaRetrieve**](ApiApi.md#apischemaretrieve) | **GET** /api/schema/ | 


# **apiSchemaRetrieve**
> JsonObject apiSchemaRetrieve(format, lang)



OpenApi3 schema for this API. Format can be selected via content negotiation.  - YAML: application/vnd.oai.openapi - JSON: application/vnd.oai.openapi+json

### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getApiApi();
final String format = format_example; // String | 
final String lang = lang_example; // String | 

try {
    final response = api.apiSchemaRetrieve(format, lang);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ApiApi->apiSchemaRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | [optional] 
 **lang** | **String**|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.oai.openapi, application/yaml, application/vnd.oai.openapi+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

