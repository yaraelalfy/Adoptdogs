import 'package:animals/feature/DailyTask/presentation/views/widgets/full_task.dart';
import 'package:animals/feature/DailyTask/presentation/views/widgets/task_list.dart';
import 'package:animals/feature/detail/presentation/manager/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animals/feature/detail/presentation/manager/state.dart'; // Import AppCubit

// void main() {
//   runApp(
//     MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (_) => AppCubit(),
//         ),
//       ],
//       child: MyApp(),
//     ),
//   );
// }

class MainTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FullTasks(),
      ),
    );
  }
}



