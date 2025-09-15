import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasklog_flutter/data/local/database.dart';
import 'package:tasklog_flutter/data/local/task_local_data_source.dart';

part 'data_source_providers.g.dart';

@Riverpod(keepAlive: true)
TaskLogDatabase database(Ref ref) => TaskLogDatabase();

@Riverpod(keepAlive: true)
TaskLocalDataSource taskLocalDataSource(Ref ref) {
  final database = ref.watch(databaseProvider);
  return TaskLocalDataSource(database);
}
