import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/routing/router.dart';
import 'package:tasklog_flutter/core/ui/theme.dart';

final helloWorldProvider = Provider((_) => 'Hello World');

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      routerConfig: router,
      builder: (context, child) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            body: child,
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
