import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/continueToApp.dart';
import 'widgets/welcome1.dart';
import 'widgets/welcome2.dart';

class SplashPageview extends StatelessWidget {
   SplashPageview({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
      controller:_controller ,
      children: [
        Welcome1(),
        Welcome2(),
        ContinueToApp()
      ],


      ),
    );
  }
}
