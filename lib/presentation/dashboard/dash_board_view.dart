import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/presentation/dashboard/viewmodel/dash_board_viewmodel.dart';
import 'package:tasklog_flutter/presentation/dashboard/widgets/write_task_bottom_sheet.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              scrolledUnderElevation: 0,
              title: Text('TaskLog'),
              actions: [CircleAvatar(child: Icon(Icons.person))],
              actionsPadding: EdgeInsets.only(right: 10),
              bottom: TabBar(
                tabs: [
                  Tab(icon: DashBoardTabMenu.favorite.icon),
                  Tab(text: DashBoardTabMenu.progress.toString()),
                  Tab(text: DashBoardTabMenu.success.toString()),
                ],
              ),
            ),
          ];
        },
        body: Builder(
          builder: (context) => TabBarView(
            children: [
              _buildCardListView(context),
              _buildCardListView(context),
              _buildCardListView(context),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return WriteTaskBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildCardListView(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final viewmodel = ref.watch(dashBoardViewModelProvider);
        return switch (viewmodel) {
          AsyncValue(:final value?) => _buildSuccessView(value),
          AsyncValue(error: != null) => Center(
            child: Text('Error: ${viewmodel.error}'),
          ),
          _ => Center(child: CircularProgressIndicator()),
        };
      },
    );
  }

  Widget _buildSuccessView(DashBoardState state) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: state.tasks.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                state.currentTabMenu.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          );
        }
        final itemIndex = index - 1;
        return ListTile(
          title: Text(state.tasks[itemIndex].title),
          leading: Radio(value: state.tasks[itemIndex].isCompleted),
          trailing: IconButton(icon: Icon(Icons.star_border), onPressed: () {}),
          onTap: () {},
        );
      },
    );
  }
}
