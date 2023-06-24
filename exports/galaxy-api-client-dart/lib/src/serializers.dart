//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:galaxy_api_client_dart/src/date_serializer.dart';
import 'package:galaxy_api_client_dart/src/model/date.dart';

import 'package:galaxy_api_client_dart/src/model/account.dart';
import 'package:galaxy_api_client_dart/src/model/acquire_access_token_request.dart';
import 'package:galaxy_api_client_dart/src/model/acquire_access_token_response.dart';
import 'package:galaxy_api_client_dart/src/model/create_account_request.dart';
import 'package:galaxy_api_client_dart/src/model/create_new_account_response.dart';
import 'package:galaxy_api_client_dart/src/model/create_task_for_account_response.dart';
import 'package:galaxy_api_client_dart/src/model/create_task_request.dart';
import 'package:galaxy_api_client_dart/src/model/get_task_response.dart';
import 'package:galaxy_api_client_dart/src/model/introspect_access_token_response.dart';
import 'package:galaxy_api_client_dart/src/model/list_tasks_for_account_response.dart';
import 'package:galaxy_api_client_dart/src/model/refresh_access_token_request.dart';
import 'package:galaxy_api_client_dart/src/model/refresh_access_token_response.dart';
import 'package:galaxy_api_client_dart/src/model/share_task_request.dart';
import 'package:galaxy_api_client_dart/src/model/task.dart';
import 'package:galaxy_api_client_dart/src/model/task_shared_account.dart';
import 'package:galaxy_api_client_dart/src/model/unshare_task_request.dart';
import 'package:galaxy_api_client_dart/src/model/update_task_request.dart';
import 'package:galaxy_api_client_dart/src/model/update_task_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  AcquireAccessTokenRequest,
  AcquireAccessTokenResponse,
  CreateAccountRequest,
  CreateNewAccountResponse,
  CreateTaskForAccountResponse,
  CreateTaskRequest,
  GetTaskResponse,
  IntrospectAccessTokenResponse,
  ListTasksForAccountResponse,
  RefreshAccessTokenRequest,
  RefreshAccessTokenResponse,
  ShareTaskRequest,
  Task,
  TaskSharedAccount,
  UnshareTaskRequest,
  UpdateTaskRequest,
  UpdateTaskResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
