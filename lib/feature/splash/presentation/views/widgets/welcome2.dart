import 'package:animals/core/styles/styles.dart';
import 'package:flutter/material.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.only(top: 60),
            // decoration: BoxDecoration(
            //   color: Colors.deepOrange[100],
            //   borderRadius: BorderRadius.circular(900)
            // ),
            child: Image.asset("images/splashScreen/e8b97dbdbf53cbf76ffed48ea00012b6-removebg-preview.png"),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 10),
            child: Text("Find the pet successed in grapping Your Attention!" , style:Fonts.textStyle1),
            
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left:52,right: 22),
            child: Text("browse and choose a pet you will pleased of taking care of",softWrap: true,style: Fonts.textStyle2,),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(bottom: 20,left: 220,top: 50),
           // width: 40,
            child: Row(
              children: [
                Image.asset("images/splashScreen/swipe.png" ,height: 25,width: 25,),
                Container(
                  //width: 40,
                  child: Text("swipe left",style: Fonts.textStyle3,))
              ],
            ),
          )

        ],
      ),

    );
  }
}