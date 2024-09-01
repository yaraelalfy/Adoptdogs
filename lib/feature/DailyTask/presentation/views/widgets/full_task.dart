import 'package:animals/core/styles.dart';
import 'package:animals/feature/Advice/presentation/views/widgets/AppBarShape.dart';
import 'package:animals/feature/DailyTask/presentation/views/widgets/body_daily_task.dart';
import 'package:animals/drawer_screen.dart';
import 'package:flutter/material.dart';

class FullTasks extends StatelessWidget {
  const FullTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar:AppBar(
      elevation:0,
      flexibleSpace:AppBarShape(),
      title: Text(
          "Pet Tasks",
          style: Fonts.appbar
      ),
      centerTitle: true,

      actions: [
        IconButton(
          icon: Icon(Icons.pets, color: Colors.white),
          onPressed: () {
          },
        ),
      ],
    ),
    drawer: Drawer(child: DrawerScreen(),),
    body:BodyDailyTask(),
    );
  }
}
