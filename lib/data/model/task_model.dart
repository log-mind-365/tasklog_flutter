import 'package:drift/drift.dart';
import 'package:tasklog_flutter/data/local/database.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';

class TaskModel {
  final int id;
  final String title;
  final String? content;
  final bool isCompleted;
  final TaskStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  TaskModel({
    required this.id,
    required this.title,
    this.content,
    required this.isCompleted,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  static TasksCompanion fromEntity(TaskEntity task) {
    return TasksCompanion(
      id: task.id == 0 ? const Value.absent() : Value(task.id),
      title: Value(task.title),
      content: Value(task.content),
      isCompleted: Value(task.isCompleted),
      status: Value(task.status),
      createdAt: Value(task.createdAt),
      updatedAt: Value(task.updatedAt),
    );
  }

  TaskEntity toEntity() {
    return TaskEntity(
      id: id,
      title: title,
      content: content,
      isCompleted: isCompleted,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
