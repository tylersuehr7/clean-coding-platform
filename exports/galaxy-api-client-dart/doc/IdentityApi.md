# galaxy_api_client_dart.api.IdentityApi

## Load the API package
```dart
import 'package:galaxy_api_client_dart/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquireAccessToken**](IdentityApi.md#acquireaccesstoken) | **POST** /v1/identity | 
[**introspectAccessToken**](IdentityApi.md#introspectaccesstoken) | **POST** /v1/identity/introspect | 
[**refreshAccessToken**](IdentityApi.md#refreshaccesstoken) | **POST** /v1/identity/refresh | 


# **acquireAccessToken**
> AcquireAccessTokenResponse acquireAccessToken(acquireAccessTokenRequest)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';

final api = GalaxyApiClientDart().getIdentityApi();
final AcquireAccessTokenRequest acquireAccessTokenRequest = ; // AcquireAccessTokenRequest | 

try {
    final response = api.acquireAccessToken(acquireAccessTokenRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IdentityApi->acquireAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acquireAccessTokenRequest** | [**AcquireAccessTokenRequest**](AcquireAccessTokenRequest.md)|  | 

### Return type

[**AcquireAccessTokenResponse**](AcquireAccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspectAccessToken**
> IntrospectAccessTokenResponse introspectAccessToken()



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getIdentityApi();

try {
    final response = api.introspectAccessToken();
    print(response);
} catch on DioError (e) {
    print('Exception when calling IdentityApi->introspectAccessToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IntrospectAccessTokenResponse**](IntrospectAccessTokenResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshAccessToken**
> RefreshAccessTokenResponse refreshAccessToken(refreshAccessTokenRequest)



Proxy API for the underlying TokenRefreshView – so DRF can see this

### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';

final api = GalaxyApiClientDart().getIdentityApi();
final RefreshAccessTokenRequest refreshAccessTokenRequest = ; // RefreshAccessTokenRequest | 

try {
    final response = api.refreshAccessToken(refreshAccessTokenRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling IdentityApi->refreshAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshAccessTokenRequest** | [**RefreshAccessTokenRequest**](RefreshAccessTokenRequest.md)|  | 

### Return type

[**RefreshAccessTokenResponse**](RefreshAccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

