import 'package:tasklog_flutter/data/local/task_local_data_source.dart';
import 'package:tasklog_flutter/data/model/task_model.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';
import 'package:tasklog_flutter/domain/repository/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskLocalDataSource _localDataSource;

  TaskRepositoryImpl(this._localDataSource);

  @override
  Future<void> addTask(String title, String content) async {
    final newTaskEntity = TaskEntity(
      title: title,
      content: content,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    final newTaskModel = TaskModel.fromEntity(newTaskEntity);
    await _localDataSource.addTask(newTaskModel);
  }

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
