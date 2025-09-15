import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';

class DashBoardViewModel extends Notifier<DashBoardState> {
  @override
  DashBoardState build() {
    return const DashBoardState(
      tasks: [],
      currentTabMenu: DashBoardTabMenu.progress,
    );
  }

  void addTask(String title, String content) {
    // state = state.copyWith(tasks: [...state.tasks, task]);
  }
}

@immutable
class DashBoardState {
  final List<TaskEntity> tasks;
  final DashBoardTabMenu currentTabMenu;

  const DashBoardState({required this.tasks, required this.currentTabMenu});

  DashBoardState copyWith({
    List<TaskEntity>? tasks,
    DashBoardTabMenu? currentTabMenu,
  }) {
    return DashBoardState(
      tasks: tasks ?? this.tasks,
      currentTabMenu: currentTabMenu ?? this.currentTabMenu,
    );
  }
}
