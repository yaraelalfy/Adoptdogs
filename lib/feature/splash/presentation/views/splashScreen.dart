import 'package:animals/feature/splash/presentation/views/widgets/splashBody.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: splashbody(),
    );
  }
}