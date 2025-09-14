import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_item.freezed.dart';

@freezed
abstract class TaskItem with _$TaskItem {
  factory TaskItem({
    required int id,
    required String title,
    @Default('') String content,
    @Default(false) bool isChecked,
    required DateTime createdAt,
  }) = _TaskItem;
}
