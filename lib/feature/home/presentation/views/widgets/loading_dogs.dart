import 'package:flutter/material.dart';
import 'dart:async';

import 'animalListView.dart';
import 'randomFactGenerate.dart';



class LoadingDogsPage extends StatefulWidget {
  const LoadingDogsPage({super.key});

  @override
  State<LoadingDogsPage> createState() => _LoadingDogsPageState();
}

class  _LoadingDogsPageState extends State<LoadingDogsPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>AnimalListView()));
    });
  }

  Widget build(BuildContext context) {




    return Scaffold(
      body: Center(child: Text("Loading ...",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,),))
    );
  }
}
/*Container(

child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
CircularProgressIndicator(
color: Colors.orange[900],
),  // A circular progress indicator
SizedBox(height: 16.0),  // Adds some vertical spacing
Text(
'Loading...',
style: TextStyle(
fontSize: 18.0,
fontWeight: FontWeight.bold,
),
),
],
),
),
),*/