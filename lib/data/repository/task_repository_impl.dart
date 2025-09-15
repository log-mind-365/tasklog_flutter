import 'package:tasklog_flutter/domain/entity/task_entity.dart';
import 'package:tasklog_flutter/domain/repository/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  @override
  Future<void> addTask(String title, String content) async {}

  @override
  Future<TaskEntity> getTaskById(int id) {
    // TODO: implement getTaskById
    throw UnimplementedError();
  }

  @override
  Future<List<TaskEntity>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }
}
