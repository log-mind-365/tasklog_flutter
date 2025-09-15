import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/data/local/database.dart';
import 'package:tasklog_flutter/data/local/task_local_data_source.dart';

final databaseProvider = Provider((ref) => TaskLogDatabase());

final taskLocalDataSourceProvider = Provider((ref) {
  final db = ref.watch(databaseProvider);
  return TaskLocalDataSource(db);
});
