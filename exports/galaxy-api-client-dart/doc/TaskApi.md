# galaxy_api_client_dart.api.TaskApi

## Load the API package
```dart
import 'package:galaxy_api_client_dart/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTaskForAccount**](TaskApi.md#createtaskforaccount) | **POST** /v1/accounts{account_id}/tasks | 
[**deleteTask**](TaskApi.md#deletetask) | **DELETE** /v1/tasks/{task_id} | 
[**getTask**](TaskApi.md#gettask) | **GET** /v1/tasks/{task_id} | 
[**listTasksForAccount**](TaskApi.md#listtasksforaccount) | **GET** /v1/accounts{account_id}/tasks | 
[**shareTask**](TaskApi.md#sharetask) | **POST** /v1/tasks/{task_id}/share | 
[**unshareTask**](TaskApi.md#unsharetask) | **POST** /v1/tasks/{task_id}/unshare | 
[**updateTask**](TaskApi.md#updatetask) | **PUT** /v1/tasks/{task_id} | 


# **createTaskForAccount**
> CreateTaskForAccountResponse createTaskForAccount(accountId, createTaskRequest)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String accountId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CreateTaskRequest createTaskRequest = ; // CreateTaskRequest | 

try {
    final response = api.createTaskForAccount(accountId, createTaskRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TaskApi->createTaskForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **createTaskRequest** | [**CreateTaskRequest**](CreateTaskRequest.md)|  | 

### Return type

[**CreateTaskForAccountResponse**](CreateTaskForAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTask**
> deleteTask(taskId)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteTask(taskId);
} catch on DioError (e) {
    print('Exception when calling TaskApi->deleteTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTask**
> GetTaskResponse getTask(taskId)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getTask(taskId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TaskApi->getTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**|  | 

### Return type

[**GetTaskResponse**](GetTaskResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTasksForAccount**
> ListTasksForAccountResponse listTasksForAccount(accountId, limit, page)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String accountId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int limit = 56; // int | 
final int page = 56; // int | 

try {
    final response = api.listTasksForAccount(accountId, limit, page);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TaskApi->listTasksForAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **limit** | **int**|  | [optional] [default to 20]
 **page** | **int**|  | [optional] [default to 1]

### Return type

[**ListTasksForAccountResponse**](ListTasksForAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareTask**
> shareTask(taskId, shareTaskRequest)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ShareTaskRequest shareTaskRequest = ; // ShareTaskRequest | 

try {
    api.shareTask(taskId, shareTaskRequest);
} catch on DioError (e) {
    print('Exception when calling TaskApi->shareTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**|  | 
 **shareTaskRequest** | [**ShareTaskRequest**](ShareTaskRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unshareTask**
> unshareTask(taskId, unshareTaskRequest)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UnshareTaskRequest unshareTaskRequest = ; // UnshareTaskRequest | 

try {
    api.unshareTask(taskId, unshareTaskRequest);
} catch on DioError (e) {
    print('Exception when calling TaskApi->unshareTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**|  | 
 **unshareTaskRequest** | [**UnshareTaskRequest**](UnshareTaskRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTask**
> UpdateTaskResponse updateTask(taskId, updateTaskRequest)



### Example
```dart
import 'package:galaxy_api_client_dart/api.dart';
// TODO Configure HTTP basic authorization: jwtAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jwtAuth').password = 'YOUR_PASSWORD';

final api = GalaxyApiClientDart().getTaskApi();
final String taskId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final UpdateTaskRequest updateTaskRequest = ; // UpdateTaskRequest | 

try {
    final response = api.updateTask(taskId, updateTaskRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TaskApi->updateTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**|  | 
 **updateTaskRequest** | [**UpdateTaskRequest**](UpdateTaskRequest.md)|  | 

### Return type

[**UpdateTaskResponse**](UpdateTaskResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

