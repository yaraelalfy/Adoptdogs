import 'package:animals/core/styles.dart';
import 'package:flutter/material.dart';

class fact_detail extends StatefulWidget {
  const fact_detail({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
  final String dogName,imagePath,type,age;

  @override
  State<fact_detail> createState() => _fact_detailState();
}

class _fact_detailState extends State<fact_detail> {
  bool choosen = false;
  List<String> images = [];
  List<String> name = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          Row(
            children: [
             // Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text("${widget.dogName} ",style: Fonts.first,),
              /*InkWell(onTap: () {
                setState(() {
                  choosen = true;
                  images.add(
                    "${widget.imagePath}",
                  );
                  name.add("${widget.dogName}");
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Adapts(image:images, name:name, type:"", age:"age", choosen:true);
                  }));
                });

              },child: Icon(Icons.shopping_cart,size: 17,color: Colors.grey,)),*/
              Spacer(),
              Icon(Icons.female,size: 27,color: Colors.grey,)
            ],
          ),
          Row(
            children: [
              Text("${widget.type} ",style: Fonts.second),
              Spacer(),
              Text("${widget.age}  month ",style: Fonts.second),
            ],
          ),
          Row(children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
              size: 24,
            ),
            Text(" 2.5 kms away",style:Fonts.third),

          ],)
        ],
      ),
    );
  }
}
