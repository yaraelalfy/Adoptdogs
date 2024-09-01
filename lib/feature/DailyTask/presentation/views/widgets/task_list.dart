import 'package:animals/feature/DailyTask/presentation/manager/cubit.dart';
import 'package:animals/feature/DailyTask/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animals/feature/DailyTask/data/Task.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        final appCubit = BlocProvider.of<TaskCubit>(context);

        return ListView.builder(
          itemCount: Tasks.length,
          itemBuilder: (context, index) {
            final task = Tasks[index];
            final isDone = appCubit.isDone(task.name);

            return CheckboxListTile(
              title: Row(
                children: [
                  Text(task.name),
                  //Icon(task.icon)
                ],
              ),
              value: isDone,
              onChanged: (value) {
                appCubit.toggleDone(task.name);
              },
            );
          },
        );
      },
    );
  }
}

/*import 'package:animals/feature/DailyTask/data/Task.dart';
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
*/