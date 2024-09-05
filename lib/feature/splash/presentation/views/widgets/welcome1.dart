import 'package:animals/core/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              color: Colors.deepOrange[100],
              borderRadius: BorderRadius.circular(900)
            ),
            child: Image.asset("images/splashScreen/2.png",width:395,height: 330,),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Text("Love Is A Four Legged \nWord" , style:Fonts.textStyle1),
            
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left:45,right: 22),
            child: Text("Making for one happy Pet,choose the pet you loved and we will professionally help you.",softWrap: true,style: Fonts.textStyle2,),
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