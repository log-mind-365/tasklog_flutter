import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasklog_flutter/data/model/task_model.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';

part 'database.g.dart';

@UseRowClass(TaskModel)
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: 30)();

  TextColumn get content => text().nullable()();

  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();

  TextColumn get status => textEnum<TaskStatus>()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();
}

@DriftDatabase(tables: [Tasks])
class TaskLogDatabase extends _$TaskLogDatabase {
  TaskLogDatabase([QueryExecutor? executor])
    : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'db.sqlite',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
