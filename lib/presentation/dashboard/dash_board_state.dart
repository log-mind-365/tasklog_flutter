import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';

part 'dash_board_state.freezed.dart';

@freezed
abstract class DashBoardState with _$DashBoardState {
  const factory DashBoardState({
    required List<TaskEntity> tasks,
    required DashBoardTabMenu currentTabMenu,
  }) = _DashBoardState;
}
