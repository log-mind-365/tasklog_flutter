import 'package:go_router/go_router.dart';
import 'package:tasklog_flutter/presentation/dashboard/dash_board_view.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const DashBoardView()),
  ],
);
