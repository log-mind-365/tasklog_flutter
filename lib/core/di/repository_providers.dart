import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/di/data_source_providers.dart';
import 'package:tasklog_flutter/data/repository/task_repository_impl.dart';
import 'package:tasklog_flutter/domain/repository/task_repository.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final dataSource = ref.watch(taskLocalDataSourceProvider);
  return TaskRepositoryImpl(dataSource);
});
