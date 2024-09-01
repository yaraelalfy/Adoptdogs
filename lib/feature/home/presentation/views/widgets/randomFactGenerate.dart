import 'package:flutter/material.dart';

class RandomFactGenerate extends StatefulWidget {
  const RandomFactGenerate({super.key});

  @override
  State<RandomFactGenerate> createState() => _RandomFactGenerateState();
}

class _RandomFactGenerateState extends State<RandomFactGenerate> {
  String data=" ";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getTheFact();
  }
  // Future<void> getTheFact() async {
  //   data = await random_fact().getFacts();
  //   setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Let's Play With Facts",
            style: TextStyle(
                color: Colors.orange[900],
                //fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
        ),
        body: Stack(
          alignment: Alignment.topCenter,
         children: [
          Column(
            children: [
              Row(children: [
                //Spacer(),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(5, 236, 20, 114),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //SizedBox(height: 80,),
                    Container(
                      width: 60,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(13, 121, 106, 107),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 55,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(9, 161, 160, 126),
                    //borderRadius: BorderRadius.only(topLeft: Radius.circular(360),bottomLeft: Radius.circular(360))
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 5,),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(8, 155, 139, 144),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //SizedBox(height: 20,),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(5, 98, 72, 82),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //SizedBox(height: 90,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(12, 70, 74, 89),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(16, 20, 204, 236),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(height:110,),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(220, 197, 187, 144),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ]),
              Container(
                margin: EdgeInsets.only(top: 7.5),
                width: 400,
                height: 465.5,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(800),
                      // bottomRight: Radius.circular(40.0),
                    )
                    //shape: BoxShape.circle,
                    ),
                    child: Image.asset("images/splashScreen/6.png"),
                // child: Padding(
                //   padding: const EdgeInsets.only(top: 270,right: 30,left: 20),
                //   child: Text("Here i will Write the fact Here i will Write the fact Here i will Write the fact",
                //                   style: TextStyle(
                //   fontSize: 20,
                //   fontWeight: FontWeight.bold,
                //                   ),
                //                   softWrap: true,
                //                 ),
                // ),
              ),
            ],
          ),
          Container(width: double.infinity,height: 205,
            child: Padding(
              padding: const EdgeInsets.only(top: 45,right: 40,left: 40),
                child: ListView(
                  children: [
                    Text(
                      data,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                      softWrap: true,
                    ),
                  ],
                )

            ),
          ),

         ],
        ));
  }
}
