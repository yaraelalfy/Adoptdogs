import 'package:animals/feature/Advice/presentation/views/MainAdvice.dart';
import 'package:animals/feature/DailyTask/presentation/views/MainTasks.dart';
import 'package:animals/feature/home/presentation/views/mainHome.dart';
import 'package:animals/feature/random_fact_display/view/random_fact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class navigationBar extends StatelessWidget {
  List NavigationScreen = [
    MainHome(),
    MainTasks(),
    RandomFactScreen(),
    MainAdvice(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit, int>(
        builder: (context, selectedIndex) {
      return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          context.read<NavigationCubit>().changeTab(index);
        },
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
        unselectedItemColor: Colors.grey,);
      }),
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, selectedIndex) {
          return NavigationScreen[selectedIndex];
        },
      ),
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////
class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0);

  void changeTab(int index) {
    emit(index);
  }
}
