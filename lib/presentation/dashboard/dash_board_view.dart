import 'package:flutter/material.dart';
import 'package:tasklog_flutter/presentation/dashboard/widgets/task_list_container.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          floating: true,
          pinned: true,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(bottom: 60),
            expandedTitleScale: 1,
            title: Text('TaskLog'),
          ),
          actions: [CircleAvatar()],
          actionsPadding: EdgeInsets.only(right: 10),
          bottom: TabBar(
            tabs: [
              Tab(text: '탭 1'),
              Tab(text: '탭 2'),
              Tab(text: '탭 3'),
            ],
          ),
        ),
      ],
      body: TabBarView(
        children: [
          TaskListContainer(
            items: List<String>.generate(1000, (i) => 'item $i'),
          ),
          Center(child: Text('Tab 2')),
          Center(child: Text('Tab 3')),
        ],
      ),
    );
  }
}
