import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tasklog_flutter/presentation/dashboard/viewmodel/dash_board_viewmodel.dart';

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
              context.pop();
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
