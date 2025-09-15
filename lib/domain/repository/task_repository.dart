import '../entity/task_entity.dart';

abstract class TaskRepository {
  Future<void> addTask(String title, String content);

  Future<TaskEntity> getTaskById(int id);

  Future<List<TaskEntity>> getTasks();
}
