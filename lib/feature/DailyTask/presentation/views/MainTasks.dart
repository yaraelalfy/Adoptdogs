import 'package:animals/feature/DailyTask/presentation/views/widgets/full_task.dart';
import 'package:flutter/material.dart';

class MainTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FullTasks(),
      ),
    );
  }
}



