# AccountAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewAccount**](AccountAPI.md#createnewaccount) | **POST** /v1/accounts | 


# **createNewAccount**
```swift
    open class func createNewAccount(createAccountRequest: CreateAccountRequest, completion: @escaping (_ data: CreateNewAccountResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let createAccountRequest = CreateAccountRequest(username: "username_example", password: "password_example", firstName: "firstName_example", lastName: "lastName_example", isResetPassword: false, isVerified: false) // CreateAccountRequest | 

AccountAPI.createNewAccount(createAccountRequest: createAccountRequest) { (response, error) in
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
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md) |  | 

### Return type

[**CreateNewAccountResponse**](CreateNewAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

