import 'package:animals/feature/home/presentation/views/widgets/animalListView.dart';
import 'package:flutter/material.dart';

import '../../../../drawer_screen.dart';
import 'widgets/random_fact.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 67,
            width: double.maxFinite,
            child: Image.asset(
              'images/splashScreen/photo_2024-07-22_03-57-10-removebg-preview.png', // Replace with the path to your image asset
              // height: 45.0,width: 45,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(child: DrawerScreen(),),
      body: Column(
        children: [
         // RandomFact(),
          Expanded(child: AnimalListView()),
        ],
      ),
    );
  }
}
