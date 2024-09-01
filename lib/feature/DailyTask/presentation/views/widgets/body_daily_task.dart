import 'package:animals/core/styles.dart';
import 'package:animals/feature/DailyTask/data/Task.dart';
import 'package:animals/feature/DailyTask/presentation/views/widgets/task_list.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class BodyDailyTask extends StatefulWidget {
  const BodyDailyTask({super.key});

  @override
  State<BodyDailyTask> createState() => _BodyDailyTaskState();
}

class _BodyDailyTaskState extends State<BodyDailyTask> {
  void _addTask(String taskName) {
    setState(() {
      Tasks.add(Task(name: taskName));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Text("Daily Tasks:", style:Fonts.Tasks),
        SizedBox(height: 20,),
        Expanded(child:TaskList()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter a Task',
                  ),
                  onSubmitted: (taskName) {
                    _addTask(taskName);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
