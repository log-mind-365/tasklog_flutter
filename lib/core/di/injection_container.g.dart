// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injection_container.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(database)
const databaseProvider = DatabaseProvider._();

final class DatabaseProvider
    extends
        $FunctionalProvider<TaskLogDatabase, TaskLogDatabase, TaskLogDatabase>
    with $Provider<TaskLogDatabase> {
  const DatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseHash();

  @$internal
  @override
  $ProviderElement<TaskLogDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TaskLogDatabase create(Ref ref) {
    return database(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaskLogDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaskLogDatabase>(value),
    );
  }
}

String _$databaseHash() => r'83192dd1ebd284573a4a807d37e86c403914541f';

@ProviderFor(taskLocalDataSource)
const taskLocalDataSourceProvider = TaskLocalDataSourceProvider._();

final class TaskLocalDataSourceProvider
    extends
        $FunctionalProvider<
          TaskLocalDataSource,
          TaskLocalDataSource,
          TaskLocalDataSource
        >
    with $Provider<TaskLocalDataSource> {
  const TaskLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<TaskLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TaskLocalDataSource create(Ref ref) {
    return taskLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaskLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaskLocalDataSource>(value),
    );
  }
}

String _$taskLocalDataSourceHash() =>
    r'4bffe00afa37ed94e049b807ce3974737dcaff70';

@ProviderFor(taskRepository)
const taskRepositoryProvider = TaskRepositoryProvider._();

final class TaskRepositoryProvider
    extends $FunctionalProvider<TaskRepository, TaskRepository, TaskRepository>
    with $Provider<TaskRepository> {
  const TaskRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskRepositoryHash();

  @$internal
  @override
  $ProviderElement<TaskRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TaskRepository create(Ref ref) {
    return taskRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaskRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaskRepository>(value),
    );
  }
}

String _$taskRepositoryHash() => r'a614dc6b87ecea7c445b7040810d146b105d87f0';

@ProviderFor(taskUseCase)
const taskUseCaseProvider = TaskUseCaseProvider._();

final class TaskUseCaseProvider
    extends $FunctionalProvider<TaskUseCase, TaskUseCase, TaskUseCase>
    with $Provider<TaskUseCase> {
  const TaskUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskUseCaseHash();

  @$internal
  @override
  $ProviderElement<TaskUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TaskUseCase create(Ref ref) {
    return taskUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaskUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaskUseCase>(value),
    );
  }
}

String _$taskUseCaseHash() => r'72ee4823f4d6a8fa480d4afb6fd48f9de98cffc0';
