import 'package:flutter/material.dart';

class AppBarShape extends StatelessWidget {
  const AppBarShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xfffd8500),
            Color(0xff8f2253)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

/*
Color(0xfffd8500),
          Color(0xff8f2253)],Color.fromARGB(143, 255, 86, 34),
        Color.fromARGB(143, 93, 32, 11)
*/

/*
Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(143, 255, 86, 34),
            Color.fromARGB(143, 93, 32, 11)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

    );
 */
