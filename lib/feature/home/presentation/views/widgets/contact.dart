import 'package:animals/core/styles.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,),
      body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40),
              child: Text(
                "contact us:",
                style: Fonts.first/*TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),*/
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
              child: InkWell(
                onTap: () {
                  
                },
                child: Icon(Icons.facebook ,color: Colors.blue[400],)),
            ),
             SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 15),
             child: InkWell(
              onTap: () {
                
              },
              child: Icon(Icons.snapchat ,color: Colors.yellowAccent[400],)),
            ),
             SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 15),
             child: InkWell(
              onTap: () {
                
              },
              child: Icon(Icons.phone,color: Colors.black,)),
            ),
             SizedBox(height: 25,),
             Padding(
              padding: const EdgeInsets.only(top: 25, right: 15),
             child: InkWell(
              onTap: () {
                
              },
              child: Icon(Icons.message,color: Colors.green[900],)),
            ),
            Image.asset("images/splashScreen/3.png",width: double.infinity,height:324,)
              
            
            // Center(
            //     child: InkWell(
            //         onTap: () {
            //           Navigator.push(context, MaterialPageRoute(builder: (_) {
            //             return AnimalListView();
            //           }));
            //         },
            //         child: Text(
            //           "Go Back",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold,
            //               decoration: TextDecoration.underline,
            //               decorationColor: Colors.black),
            //         ))),
          ],
        ),
        // child: Column(
        //   children: [
        //         Text("CONTACT US:",style: TextStyle(fontSize: 28,color: Colors.orange[900]),),
        //   ],
        // ),
      
        // child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       CircularProgressIndicator(
        //         color: Colors.green[200],
        //       ), // A circular progress indicator
        //       SizedBox(height: 16.0), // Adds some vertical spacing
        //       Text(
        //         'Loading...',
        //         style: TextStyle(
        //           fontSize: 18.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
     
    );
  }
}
