import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  final List<String> items;
  const ListContainer({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(pinned: false, title: Text('My Task List')),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(title: Text(items[index]));
          }, childCount: items.length),
        ),
      ],
    );
  }
}
