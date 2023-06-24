import 'package:test/test.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';


/// tests for TaskApi
void main() {
  final instance = GalaxyApiClientDart().getTaskApi();

  group(TaskApi, () {
    //Future<CreateTaskForAccountResponse> createTaskForAccount(String accountId, CreateTaskRequest createTaskRequest) async
    test('test createTaskForAccount', () async {
      // TODO
    });

    //Future deleteTask(String taskId) async
    test('test deleteTask', () async {
      // TODO
    });

    //Future<GetTaskResponse> getTask(String taskId) async
    test('test getTask', () async {
      // TODO
    });

    //Future<ListTasksForAccountResponse> listTasksForAccount(String accountId, { int limit, int page }) async
    test('test listTasksForAccount', () async {
      // TODO
    });

    //Future shareTask(String taskId, ShareTaskRequest shareTaskRequest) async
    test('test shareTask', () async {
      // TODO
    });

    //Future unshareTask(String taskId, UnshareTaskRequest unshareTaskRequest) async
    test('test unshareTask', () async {
      // TODO
    });

    //Future<UpdateTaskResponse> updateTask(String taskId, UpdateTaskRequest updateTaskRequest) async
    test('test updateTask', () async {
      // TODO
    });

  });
}
