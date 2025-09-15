import 'package:tasklog_flutter/data/local/database.dart';

class TaskLocalDataSource {
  final TaskLogDatabase _db;

  TaskLocalDataSource(this._db);

  Future<void> addTask(TasksCompanion task) async {
    await _db.into(_db.tasks).insert(task);
  }
}
