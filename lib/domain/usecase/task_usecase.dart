import 'package:tasklog_flutter/domain/repository/task_repository.dart';

class TaskUseCase {
  final TaskRepository _taskRepository;

  const TaskUseCase(this._taskRepository);

  Future<void> addTask(String title, String content) async {
    await _taskRepository.addTask(title, content);
  }
}
