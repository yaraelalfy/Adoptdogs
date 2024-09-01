import 'package:flutter/material.dart';

class Abouts extends StatelessWidget {
  const Abouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "images/splashScreen/photo_2024-07-24_02-17-23 (2).jpg",),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            //     Colors.white.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170, right: 15, left: 15),
              child: Text(
                  "Welcome to FIND ME PET organization, a dedicated animal welfare organization committed to rescuing, rehabilitating, and rehoming animals in need. Our mission is to provide a safe haven for animals, offering them the love  they deserve. We work to advocate for animal rights, educate the community about responsible pet ownership, and promote spaying and neutering to reduce the number of homeless animals.",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  softWrap: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 15),
              child: Text(
                "Thanks For Trusting us , Take care",
                style: TextStyle(
                  color: Colors.red[200],
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
      ),
    );
  }
}
