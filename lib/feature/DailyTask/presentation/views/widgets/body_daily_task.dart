import 'package:animals/core/styles.dart';
import 'package:animals/feature/DailyTask/presentation/views/widgets/task_list.dart';
import 'package:flutter/material.dart';
class BodyDailyTask extends StatelessWidget {
  const BodyDailyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Text("Daily Tasks:", style:Fonts.Tasks),
        SizedBox(height: 20,),
        Expanded(child:TaskList()),
      ],
    );
  }
}
