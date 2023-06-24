import 'package:test/test.dart';
import 'package:galaxy_api_client_dart/galaxy_api_client_dart.dart';

// tests for Task
void main() {
  final instance = TaskBuilder();
  // TODO add properties to the builder and call build()

  group(Task, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Brief name of this task.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Optional. Description or details of this task.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Account who owns this task.
    // String ownerId
    test('to test the property `ownerId`', () async {
      // TODO
    });

    // String ownerDisplayName
    test('to test the property `ownerDisplayName`', () async {
      // TODO
    });

    // BuiltList<TaskSharedAccount> sharedWith
    test('to test the property `sharedWith`', () async {
      // TODO
    });

    // Optional. Timestamp in which this task was marked completed.
    // DateTime completedOn
    test('to test the property `completedOn`', () async {
      // TODO
    });

    // DateTime created
    test('to test the property `created`', () async {
      // TODO
    });

    // DateTime updated
    test('to test the property `updated`', () async {
      // TODO
    });

  });
}
