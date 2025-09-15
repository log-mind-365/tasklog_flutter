import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasklog_flutter/data/local/database.dart';
import 'package:tasklog_flutter/data/local/task_local_data_source.dart';
import 'package:tasklog_flutter/data/repository/task_repository_impl.dart';
import 'package:tasklog_flutter/domain/repository/task_repository.dart';
import 'package:tasklog_flutter/domain/usecase/task_usecase.dart';

part 'injection_container.g.dart';

// Database
@Riverpod(keepAlive: true)
TaskLogDatabase database(Ref ref) => TaskLogDatabase();

// Data Source
@Riverpod(keepAlive: true)
TaskLocalDataSource taskLocalDataSource(Ref ref) {
  final database = ref.watch(databaseProvider);
  return TaskLocalDataSource(database);
}

// Repository
@Riverpod(keepAlive: true)
TaskRepository taskRepository(Ref ref) {
  final dataSource = ref.watch(taskLocalDataSourceProvider);
  return TaskRepositoryImpl(dataSource);
}

// Use Case
@riverpod
TaskUseCase taskUseCase(Ref ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskUseCase(repository);
}
