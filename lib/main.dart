import 'package:animals/feature/DailyTask/presentation/manager/cubit.dart';
import 'package:animals/feature/detail/presentation/manager/cubit.dart';
import 'package:animals/navigationBar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/splash/presentation/views/splashScreen.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavouriteCubit()),
        BlocProvider(create: (context) => TaskCubit()),
        BlocProvider(create: (context) => NavigationCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home:const splashScreen(),
      ),
    );

  }
}