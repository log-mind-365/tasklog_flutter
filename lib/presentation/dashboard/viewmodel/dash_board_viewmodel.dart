import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/core/di/injection_container.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';
import 'package:tasklog_flutter/domain/usecase/task_usecase.dart';

part 'dash_board_viewmodel.freezed.dart';
part 'dash_board_viewmodel.g.dart';

@riverpod
class DashBoardViewModel extends _$DashBoardViewModel {
  late final TaskUseCase _taskUseCase;

  @override
  FutureOr<DashBoardState> build() async {
    _taskUseCase = ref.read(taskUseCaseProvider);
    final result = await _taskUseCase.getTasks();
    return DashBoardState(tasks: result);
  }

  Future<void> addTask(String title, String content) async {
    state = AsyncValue.loading();
    await Future.delayed(Duration(seconds: 1));
    await _taskUseCase.addTask(title, content);
    state = await AsyncValue.guard(() async {
      final result = await _taskUseCase.getTasks();
      return state.value!.copyWith(tasks: result);
    });
  }
}

@freezed
abstract class DashBoardState with _$DashBoardState {
  const factory DashBoardState({
    required List<TaskEntity> tasks,
    @Default(DashBoardTabMenu.progress) DashBoardTabMenu currentTabMenu,
  }) = _DashBoardState;
}
