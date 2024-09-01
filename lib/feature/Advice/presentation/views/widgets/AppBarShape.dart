
import 'package:flutter/material.dart';

class AppBarShape extends StatelessWidget {
  const AppBarShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(143, 255, 86, 34),
            Color.fromARGB(143, 93, 32, 11)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

    );
  }
}
