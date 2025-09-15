import 'package:tasklog_flutter/data/local/database.dart';
import 'package:tasklog_flutter/data/model/task_model.dart';

class TaskLocalDataSource {
  final TaskLogDatabase _db;

  TaskLocalDataSource(this._db);

  Future<void> addTask(TasksCompanion task) async {
    await _db.into(_db.tasks).insert(task);
  }

  Future<List<TaskModel>> getTasks() async {
    return await _db.select(_db.tasks).get();
  }
}
