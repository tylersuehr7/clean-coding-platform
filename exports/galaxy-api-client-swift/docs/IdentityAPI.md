# IdentityAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquireAccessToken**](IdentityAPI.md#acquireaccesstoken) | **POST** /v1/identity | 
[**introspectAccessToken**](IdentityAPI.md#introspectaccesstoken) | **POST** /v1/identity/introspect | 
[**refreshAccessToken**](IdentityAPI.md#refreshaccesstoken) | **POST** /v1/identity/refresh | 


# **acquireAccessToken**
```swift
    open class func acquireAccessToken(acquireAccessTokenRequest: AcquireAccessTokenRequest, completion: @escaping (_ data: AcquireAccessTokenResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let acquireAccessTokenRequest = AcquireAccessTokenRequest(username: "username_example", password: "password_example") // AcquireAccessTokenRequest | 

IdentityAPI.acquireAccessToken(acquireAccessTokenRequest: acquireAccessTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acquireAccessTokenRequest** | [**AcquireAccessTokenRequest**](AcquireAccessTokenRequest.md) |  | 

### Return type

[**AcquireAccessTokenResponse**](AcquireAccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **introspectAccessToken**
```swift
    open class func introspectAccessToken(completion: @escaping (_ data: IntrospectAccessTokenResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi


IdentityAPI.introspectAccessToken() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
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
```swift
    open class func refreshAccessToken(refreshAccessTokenRequest: RefreshAccessTokenRequest, completion: @escaping (_ data: RefreshAccessTokenResponse?, _ error: Error?) -> Void)
```



Proxy API for the underlying TokenRefreshView – so DRF can see this

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let refreshAccessTokenRequest = RefreshAccessTokenRequest(refresh: "refresh_example") // RefreshAccessTokenRequest | 

IdentityAPI.refreshAccessToken(refreshAccessTokenRequest: refreshAccessTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshAccessTokenRequest** | [**RefreshAccessTokenRequest**](RefreshAccessTokenRequest.md) |  | 

### Return type

[**RefreshAccessTokenResponse**](RefreshAccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

