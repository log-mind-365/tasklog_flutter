import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';

enum TaskStatus { progress, stopped, paused }

@freezed
abstract class TaskEntity with _$TaskEntity {
  factory TaskEntity({
    @Default(0) int id,
    required String title,
    String? content,
    @Default(false) bool isCompleted,
    @Default(TaskStatus.progress) TaskStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TaskEntity;
}
