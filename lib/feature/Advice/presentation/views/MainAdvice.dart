import 'package:animals/core/styles.dart';
import 'package:animals/feature/Advice/presentation/views/widgets/list_advice.dart';
import 'package:animals/drawer_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/AppBarShape.dart';

class MainAdvice extends StatelessWidget {
  const MainAdvice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        flexibleSpace:AppBarShape(),
        title: Text(
          "Pet Advice",
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
      body: ListAdvice(),
    );
  }
}
