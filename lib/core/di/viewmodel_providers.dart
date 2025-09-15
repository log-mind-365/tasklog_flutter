import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/presentation/dashboard/dash_board_view_model.dart';

final dashBoardViewModelProvider =
    NotifierProvider.autoDispose<DashBoardViewModel, DashBoardState>(
      () => DashBoardViewModel(),
    );
