import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/di/viewmodel_providers.dart';

class WriteTaskBottomSheet extends ConsumerWidget {
  const WriteTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Task Name',
              border: InputBorder.none,
            ),
            onSubmitted: (value) {
              ref.read(dashBoardViewModelProvider.notifier).addTask(value, '');
              Navigator.pop(context);
            },
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.access_time_outlined),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('Save')),
            ],
          ),
        ],
      ),
    );
  }
}
