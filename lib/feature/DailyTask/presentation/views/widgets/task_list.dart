import 'package:animals/feature/DailyTask/data/Task.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Tasks.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(Tasks[index].name),
          value: Tasks[index].done,
          onChanged: (value) {
            setState(() {
              Tasks[index].done = value ?? false;
            });
          },
        );
      },
    );
  }
}
