import 'package:flutter/material.dart';

enum DashBoardTabMenu {
  progress,
  success,
  fail;

  @override
  String toString() {
    switch (this) {
      case DashBoardTabMenu.progress:
        return 'Progress';
      case DashBoardTabMenu.success:
        return 'Success';
      case DashBoardTabMenu.fail:
        return 'Fail';
    }
  }

  Icon get icon {
    switch (this) {
      case DashBoardTabMenu.progress:
        return Icon(Icons.task);
      case DashBoardTabMenu.success:
        return Icon(Icons.check);
      case DashBoardTabMenu.fail:
        return Icon(Icons.close);
    }
  }
}

class TaskItem {
  final int id;
  final String name;
  final bool isChecked;

  TaskItem({required this.id, required this.name, this.isChecked = false});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'isChecked': isChecked};
  }

  factory TaskItem.fromMap(Map<String, dynamic> map) {
    return TaskItem(
      id: map['id'],
      name: map['name'],
      isChecked: map['isChecked'],
    );
  }
}

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            floating: true,
            pinned: true,
            scrolledUnderElevation: 0,
            title: Text('TaskLog'),
            actions: [CircleAvatar()],
            actionsPadding: EdgeInsets.only(right: 10),
            bottom: TabBar(
              tabs: [
                Tab(text: DashBoardTabMenu.progress.toString()),
                Tab(text: DashBoardTabMenu.success.toString()),
                Tab(text: DashBoardTabMenu.fail.toString()),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
        children: [
          _buildCardListView(
            context,
            List<TaskItem>.generate(5, (i) => TaskItem(id: i, name: 'item $i')),
            DashBoardTabMenu.progress,
          ),
          _buildCardListView(
            context,
            List<TaskItem>.generate(
              100,
              (i) => TaskItem(id: i, name: 'item $i'),
            ),
            DashBoardTabMenu.success,
          ),
          _buildCardListView(
            context,
            List<TaskItem>.generate(
              300,
              (i) => TaskItem(id: i, name: 'item $i'),
            ),
            DashBoardTabMenu.fail,
          ),
        ],
      ),
    );
  }

  Widget _buildCardListView(
    BuildContext context,
    List<TaskItem> items,
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
          title: Text(items[itemIndex].name),
          leading: Radio(value: items[itemIndex].isChecked),
          trailing: IconButton(icon: Icon(Icons.star_border), onPressed: () {}),
          onTap: () {},
        );
      },
    );
  }
}
