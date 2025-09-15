import 'package:tasklog_flutter/domain/entity/task_entity.dart';
import 'package:tasklog_flutter/domain/repository/task_repository.dart';

class TaskUseCase {
  final TaskRepository _taskRepository;

  const TaskUseCase(this._taskRepository);

  Future<List<TaskEntity>> getTasks() async {
    return await _taskRepository.getTasks();
  }

  Future<void> addTask(String title, String content) async {
    await _taskRepository.addTask(title, content);
  }
}
