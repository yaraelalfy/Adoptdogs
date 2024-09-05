import 'package:animals/core/styles/AppBarShape.dart';
import 'package:animals/core/styles/styles.dart';
import 'package:animals/drawer_screen.dart';
import 'package:animals/feature/random_fact_display/data/api_service.dart';
import 'package:animals/feature/random_fact_display/manager/fact_bloc.dart';
import 'package:animals/feature/random_fact_display/manager/fact_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomFactScreen extends StatelessWidget {
  const RandomFactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FactBloc(FactApiService.api)..fetchFact(),
      child: Scaffold(
        appBar: AppBar(
          elevation:0,
          flexibleSpace:AppBarShape(),
          title: Text(
              "Enjoy Our Facts",
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.orange.shade100,
                Colors.orange.shade200,
                Colors.orange.shade300,
                Colors.orange.shade400,
                Colors.orange.shade600,
                Colors.orange.shade800,
                Colors.orange.shade900,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocBuilder<FactBloc, FactState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const CircularProgressIndicator();
                  } else if (state is ScucessState) {
                    return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListView(
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(
                              child: Text(
                                'Do You Know?',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange.shade800,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              state.fact,
                              style:const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                context.read<FactBloc>().fetchFact();
                              },
                              child: Text('Generate New Fact',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            Image.asset(
                              'images/splashScreen/8.png',
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (state is FailedState) {
                    return Text("Error: ${state.message}");
                  } else {
                    return const Text("Can't Fetch Fact");
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
