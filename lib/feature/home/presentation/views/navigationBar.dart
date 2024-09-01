import 'package:animals/feature/Advice/presentation/views/MainAdvice.dart';
import 'package:animals/feature/Advice/presentation/views/widgets/adv2.dart';
import 'package:animals/feature/DailyTask/presentation/views/MainTasks.dart';
import 'package:animals/feature/DailyTask/presentation/views/widgets/body_daily_task.dart';
import 'package:animals/feature/home/presentation/views/mainHome.dart';
import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  @override
  State<navigationBar> createState() => _HomeState();
}

class _HomeState extends State<navigationBar> {
  int _selected=0;
  void _Tapped(int index) {
    setState(() {
      _selected= index;
    });
  }
  int value = 0;
  List NavigationScreen = [
    MainHome(),
    MainTasks(),
    pageview(),
    MainAdvice(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: _Tapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation:0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.task_outlined, ),label: 'Daily task',),
          BottomNavigationBarItem(icon: Icon(Icons.games,),label: 'Randoms',),
          BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates,),label: 'Advice',),
        ],
        selectedItemColor:Color.fromARGB(143, 255, 86, 34),
        unselectedItemColor: Colors.grey,
      ),
      body: NavigationScreen[_selected],
    );
  }
}
