import 'package:flutter/material.dart';

class WriteTaskBottomSheet extends StatelessWidget {
  const WriteTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
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
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.adb)),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
              IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
              Spacer(),
              TextButton(onPressed: () {}, child: Text('Save')),
            ],
          ),
        ],
      ),
    );
  }
}
