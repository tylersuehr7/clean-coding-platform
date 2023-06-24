# galaxy_api_client_dart.model.Task

## Load the model package
```dart
import 'package:galaxy_api_client_dart/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** | Brief name of this task. | 
**description** | **String** | Optional. Description or details of this task. | [optional] 
**ownerId** | **String** | Account who owns this task. | 
**ownerDisplayName** | **String** |  | 
**sharedWith** | [**BuiltList&lt;TaskSharedAccount&gt;**](TaskSharedAccount.md) |  | 
**completedOn** | [**DateTime**](DateTime.md) | Optional. Timestamp in which this task was marked completed. | [optional] 
**created** | [**DateTime**](DateTime.md) |  | 
**updated** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


