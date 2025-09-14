import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(icon: Icon(Icons.abc)),
              Tab(icon: Icon(Icons.abc)),
              Tab(icon: Icon(Icons.abc)),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: ListView(children: [Center(child: Text('Tab 1'))]),
                ),
                Center(child: Text('Tab 2')),
                Center(child: Text('Tab 3')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
