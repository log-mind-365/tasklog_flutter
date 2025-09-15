import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/core/di/injection_container.dart';
import 'package:tasklog_flutter/domain/usecase/task_usecase.dart';
import 'package:tasklog_flutter/presentation/dashboard/viewmodel/dash_board_state.dart';

part 'dash_board_viewmodel.g.dart';

@riverpod
class DashBoardViewModel extends _$DashBoardViewModel {
  late final TaskUseCase _taskUseCase;

  @override
  DashBoardState build() {
    _taskUseCase = ref.watch(taskUseCaseProvider);
    return const DashBoardState(
      tasks: [],
      currentTabMenu: DashBoardTabMenu.progress,
    );
  }

  Future<void> addTask(String title, String content) async {
    final result = await _taskUseCase.addTask(title, content);
  }
}
