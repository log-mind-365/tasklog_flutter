import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final String id;

  const DetailView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail'), centerTitle: true),
      body: Column(children: [Text('Detail View')]),
    );
  }
}
