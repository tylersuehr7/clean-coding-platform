# TaskAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTaskForAccount**](TaskAPI.md#createtaskforaccount) | **POST** /v1/accounts{account_id}/tasks | 
[**deleteTask**](TaskAPI.md#deletetask) | **DELETE** /v1/tasks/{task_id} | 
[**getTask**](TaskAPI.md#gettask) | **GET** /v1/tasks/{task_id} | 
[**listTasksForAccount**](TaskAPI.md#listtasksforaccount) | **GET** /v1/accounts{account_id}/tasks | 
[**shareTask**](TaskAPI.md#sharetask) | **POST** /v1/tasks/{task_id}/share | 
[**unshareTask**](TaskAPI.md#unsharetask) | **POST** /v1/tasks/{task_id}/unshare | 
[**updateTask**](TaskAPI.md#updatetask) | **PUT** /v1/tasks/{task_id} | 


# **createTaskForAccount**
```swift
    open class func createTaskForAccount(accountId: UUID, createTaskRequest: CreateTaskRequest, completion: @escaping (_ data: CreateTaskForAccountResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let accountId = 987 // UUID | 
let createTaskRequest = CreateTaskRequest(name: "name_example", description: "description_example", shareWithIds: [123]) // CreateTaskRequest | 

TaskAPI.createTaskForAccount(accountId: accountId, createTaskRequest: createTaskRequest) { (response, error) in
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
 **accountId** | **UUID** |  | 
 **createTaskRequest** | [**CreateTaskRequest**](CreateTaskRequest.md) |  | 

### Return type

[**CreateTaskForAccountResponse**](CreateTaskForAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTask**
```swift
    open class func deleteTask(taskId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let taskId = 987 // UUID | 

TaskAPI.deleteTask(taskId: taskId) { (response, error) in
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
 **taskId** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTask**
```swift
    open class func getTask(taskId: UUID, completion: @escaping (_ data: GetTaskResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let taskId = 987 // UUID | 

TaskAPI.getTask(taskId: taskId) { (response, error) in
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
 **taskId** | **UUID** |  | 

### Return type

[**GetTaskResponse**](GetTaskResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTasksForAccount**
```swift
    open class func listTasksForAccount(accountId: UUID, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: ListTasksForAccountResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let accountId = 987 // UUID | 
let limit = 987 // Int |  (optional) (default to 20)
let page = 987 // Int |  (optional) (default to 1)

TaskAPI.listTasksForAccount(accountId: accountId, limit: limit, page: page) { (response, error) in
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
 **accountId** | **UUID** |  | 
 **limit** | **Int** |  | [optional] [default to 20]
 **page** | **Int** |  | [optional] [default to 1]

### Return type

[**ListTasksForAccountResponse**](ListTasksForAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareTask**
```swift
    open class func shareTask(taskId: UUID, shareTaskRequest: ShareTaskRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let taskId = 987 // UUID | 
let shareTaskRequest = ShareTaskRequest(accountIds: [123]) // ShareTaskRequest | 

TaskAPI.shareTask(taskId: taskId, shareTaskRequest: shareTaskRequest) { (response, error) in
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
 **taskId** | **UUID** |  | 
 **shareTaskRequest** | [**ShareTaskRequest**](ShareTaskRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unshareTask**
```swift
    open class func unshareTask(taskId: UUID, unshareTaskRequest: UnshareTaskRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let taskId = 987 // UUID | 
let unshareTaskRequest = UnshareTaskRequest(accountIds: [123]) // UnshareTaskRequest | 

TaskAPI.unshareTask(taskId: taskId, unshareTaskRequest: unshareTaskRequest) { (response, error) in
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
 **taskId** | **UUID** |  | 
 **unshareTaskRequest** | [**UnshareTaskRequest**](UnshareTaskRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTask**
```swift
    open class func updateTask(taskId: UUID, updateTaskRequest: UpdateTaskRequest, completion: @escaping (_ data: UpdateTaskResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GalaxyApi

let taskId = 987 // UUID | 
let updateTaskRequest = UpdateTaskRequest(name: "name_example", description: "description_example", completedOn: false, deletedOn: false) // UpdateTaskRequest | 

TaskAPI.updateTask(taskId: taskId, updateTaskRequest: updateTaskRequest) { (response, error) in
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
 **taskId** | **UUID** |  | 
 **updateTaskRequest** | [**UpdateTaskRequest**](UpdateTaskRequest.md) |  | 

### Return type

[**UpdateTaskResponse**](UpdateTaskResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

