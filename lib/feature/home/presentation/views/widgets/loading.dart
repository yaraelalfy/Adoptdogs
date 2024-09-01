/*import 'package:flutter/material.dart';
import 'dart:async';

import 'randomFactGenerate.dart';



class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class  _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>RandomFactGenerate()));
    });
  }

  Widget build(BuildContext context) {




    return Scaffold(
      body: Container(
        
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
      ),
    );
  }
}*/