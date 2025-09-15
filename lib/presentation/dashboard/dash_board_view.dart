import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasklog_flutter/core/constants/dash_board_tab_menu_enum.dart';
import 'package:tasklog_flutter/domain/entity/task_entity.dart';
import 'package:tasklog_flutter/presentation/dashboard/dash_board_viewmodel.dart';
import 'package:tasklog_flutter/presentation/dashboard/widgets/write_task_bottom_sheet.dart';

class DashBoardView extends ConsumerWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          builder: (context) {
            final viewmodel = ref.watch(dashBoardViewModelProvider);
            return TabBarView(
              children: [
                _buildCardListView(
                  context,
                  viewmodel.tasks.where((e) => e.isCompleted).toList(),
                  DashBoardTabMenu.favorite,
                ),
                _buildCardListView(
                  context,
                  viewmodel.tasks.where((e) => e.isCompleted).toList(),
                  DashBoardTabMenu.progress,
                ),
                _buildCardListView(
                  context,
                  viewmodel.tasks.where((e) => !e.isCompleted).toList(),
                  DashBoardTabMenu.success,
                ),
              ],
            );
          },
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

  Widget _buildCardListView(
    BuildContext context,
    List<TaskEntity> items,
    DashBoardTabMenu menu,
  ) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: items.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                menu.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          );
        }
        final itemIndex = index - 1;
        return ListTile(
          title: Text(items[itemIndex].title),
          leading: Radio(value: items[itemIndex].isCompleted),
          trailing: IconButton(icon: Icon(Icons.star_border), onPressed: () {}),
          onTap: () {},
        );
      },
    );
  }
}
