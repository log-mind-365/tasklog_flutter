import 'package:go_router/go_router.dart';
import 'package:tasklog_flutter/presentation/dashboard/dash_board_view.dart';
import 'package:tasklog_flutter/presentation/detail/detail_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => DashBoardView()),
    GoRoute(
      path: '/detail/:id',
      builder: (context, state) => DetailView(id: state.pathParameters['id']!),
    ),
  ],
);
