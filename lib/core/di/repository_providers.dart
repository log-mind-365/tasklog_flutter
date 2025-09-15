import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasklog_flutter/core/di/data_source_providers.dart';
import 'package:tasklog_flutter/data/repository/task_repository_impl.dart';
import 'package:tasklog_flutter/domain/repository/task_repository.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
TaskRepository taskRepository(Ref ref) {
  final dataSource = ref.watch(taskLocalDataSourceProvider);
  return TaskRepositoryImpl(dataSource);
}
