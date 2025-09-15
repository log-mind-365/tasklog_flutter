import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';

enum TaskStatus { progress, stopped, paused }

@freezed
abstract class TaskEntity with _$TaskEntity {
  factory TaskEntity({
    required int id,
    required String title,
    String? content,
    required bool isCompleted,
    required TaskStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TaskEntity;
}
