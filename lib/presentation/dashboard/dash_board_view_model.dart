import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/data/model/task_item.dart';

@immutable
class DashBoardState {
  final List<TaskItem> tasks;
  final DashBoardTabMenu currentTabMenu;

  const DashBoardState({required this.tasks, required this.currentTabMenu});

  DashBoardState copyWith({
    List<TaskItem>? tasks,
    DashBoardTabMenu? currentTabMenu,
  }) {
    return DashBoardState(
      tasks: tasks ?? this.tasks,
      currentTabMenu: currentTabMenu ?? this.currentTabMenu,
    );
  }
}

class DashBoardViewModel extends Notifier<DashBoardState> {
  @override
  DashBoardState build() {
    return const DashBoardState(
      tasks: [],
      currentTabMenu: DashBoardTabMenu.progress,
    );
  }

  void addTask(TaskItem task) {
    state = state.copyWith(tasks: [...state.tasks, task]);
  }
}

final dashBoardViewModelProvider =
    NotifierProvider.autoDispose<DashBoardViewModel, DashBoardState>(
      () => DashBoardViewModel(),
    );
