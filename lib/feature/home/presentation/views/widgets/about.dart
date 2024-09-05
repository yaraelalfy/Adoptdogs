import 'package:animals/core/styles/styles.dart';
import 'package:flutter/material.dart';

class AboutOrganization extends StatelessWidget {
  const AboutOrganization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          "About Us",
          style:Fonts.appbar2,
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
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70, right:50, left: 50),
              child: Text(
                  "Welcome to FIND ME PET organization, a dedicated animal welfare organization committed to rescuing, rehabilitating, and rehoming animals in need.\n Our mission is to provide a safe haven for animals, offering them the love  they deserve.\n We work to advocate for animal rights, educate the community about responsible pet ownership, and promote spaying and neutering to reduce the number of homeless animals.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  softWrap: true),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(top: 25, right: 15),
              child: Text(
                "Thanks For Trusting us , Take care",
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 65, 51),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),



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

      ),
    );
  }
}




