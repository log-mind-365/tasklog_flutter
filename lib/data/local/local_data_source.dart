import 'package:tasklog_flutter/data/local/database.dart';

class LocalDataSource {
  final TaskLogDatabase _db;

  LocalDataSource({required TaskLogDatabase taskLogDatabase})
    : _db = taskLogDatabase;

  Future<void> addTask(String title, String content) async {
    // await _db.into(_db.tasks).insert(taskItem);
  }
}
