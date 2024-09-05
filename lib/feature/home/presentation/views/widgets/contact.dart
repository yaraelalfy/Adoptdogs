
import 'package:animals/core/styles/styles.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:const  Text(
            "Contact",
            style: Fonts.appbar2,
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange.shade100,
                  Colors.deepOrange.shade200,
                  Colors.deepOrange.shade300,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body:  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.orange.shade100,
                Colors.orange.shade200,
                Colors.deepOrange.shade100,
                Colors.deepOrange.shade300,


              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [

              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: InkWell(
                    onTap: () {

                    },
                    child: Icon(Icons.facebook ,color: Colors.blue[400],)),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15),
                child: InkWell(
                    onTap: () {

                    },
                    child: const Icon(Icons.snapchat ,color: Colors.black,)),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15),
                child: InkWell(
                    onTap: () {

                    },
                    child: const Icon(Icons.phone,color: Colors.black,)),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15),
                child: InkWell(
                    onTap: () {

                    },
                    child: Icon(Icons.message,color: Colors.green[900],)),
              ),
              Image.asset("images/splashScreen/3.png",width: double.infinity,height:324,)


            ],
          ),
        )
    );
  }
}