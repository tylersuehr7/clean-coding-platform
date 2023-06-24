# ApiAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiSchemaRetrieve**](ApiAPI.md#apischemaretrieve) | **GET** /api/schema/ | 


# **apiSchemaRetrieve**
```swift
    open class func apiSchemaRetrieve(format: Format_apiSchemaRetrieve? = nil, lang: Lang_apiSchemaRetrieve? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



OpenApi3 schema for this API. Format can be selected via content negotiation.  - YAML: application/vnd.oai.openapi - JSON: application/vnd.oai.openapi+json

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let format = "format_example" // String |  (optional)
let lang = "lang_example" // String |  (optional)

ApiAPI.apiSchemaRetrieve(format: format, lang: lang) { (response, error) in
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
 **format** | **String** |  | [optional] 
 **lang** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.oai.openapi, application/yaml, application/vnd.oai.openapi+json, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

