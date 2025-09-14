import 'package:flutter/material.dart';

class TaskListContainer extends StatelessWidget {
  final List<String> items;

  const TaskListContainer({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}
