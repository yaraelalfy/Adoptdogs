import 'package:animals/core/styles.dart';
import 'package:animals/feature/home/presentation/views/navigationBar.dart';
import 'package:flutter/material.dart';

class ContinueToApp extends StatelessWidget {
  const ContinueToApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //margin:const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(800),
                  // bottomRight: Radius.circular(40.0),
                )),
            child: Image.asset("images/splashScreen/4.png"),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: Text("LET'S GET STARTED!", style: Fonts.textStyle1),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 22),
            child: Text(
              "By pressing 'continue to app' ,\n you will start.",
              softWrap: true,
              style: Fonts.textStyle2,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                borderRadius: BorderRadius.circular(30)),
            child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return navigationBar();
                  }));
                },
                child: Center(
                    child: Text(
                  "continue to app",
                  style: Fonts.textStyle1,
                ))),
          )

          // SizedBox(height: 30,),
          // Container(
          //   margin: EdgeInsets.only(bottom: 20,left: 220,top: 50),
          //  // width: 40,
          //   child: Row(
          //     children: [
          //       Image.asset("images/splashScreen/swipe.png" ,height: 25,width: 25,),
          //       Container(
          //         //width: 40,
          //         child: Text("swipe left",style: Fonts.textStyle3,))
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
