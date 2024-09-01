import 'package:flutter/material.dart';

import 'widgets/detailt_body.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
  final String dogName,imagePath,type,age;

  @override
  Widget build(BuildContext context) {
    return detail_body(dogName: dogName, imagePath: imagePath, type: type, age: age,);
  }
}
/*
BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: adopt_body(),
      ),
    );
 */