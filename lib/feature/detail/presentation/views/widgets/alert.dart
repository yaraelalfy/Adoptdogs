import 'package:animals/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void added(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 40,
              ),
              SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              // Replace with the desired location coordinates
              const String googleMapsUrl =
                  'https://www.google.com/maps/search/?api=1&query=40.7128,-74.0060'; // New York coordinates as an example
              if (await canLaunch(googleMapsUrl)) {
                await launch(googleMapsUrl);
              } else {
                throw 'Could not open the map.';
              }
            },
              child:Text(
                "location",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),
            // Text("Successfully added!", style: Fonts.successText),
            ) ],
          ),
        ),
        actions: [
          /*TextButton(
            onPressed: () {
            },
            child: Text(
              'Show',
              style: TextStyle(color: Colors.green),
              //Color.fromARGB(255, 119, 210, 87)
            ),
          ),
          SizedBox(width:90),*/
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close',style: TextStyle(color: Colors.red),),
          ),
        ],
      );
    },
  );
}
/*
import 'package:findanimals/core/models/names.dart';
import 'package:findanimals/core/styles.dart';
import 'package:findanimals/features/adopted_Animals/presentation/views/adapts.dart';
import 'package:flutter/material.dart';

void added(BuildContext context,List<String> imagePath,List<String> dogName,List<String> dogAge,List<String> dogType) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 40,
              ),
              SizedBox(height: 10),
              Text("Successfully added!", style: Fonts.successText),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Adapts(image:imagePath, name:dogName, type:dogType, choosen: true, age:dogAge,);
            }));
            },
            child: Text(
              'Show',
              style: TextStyle(color: Colors.green),
              //Color.fromARGB(255, 119, 210, 87)
            ),
          ),
          SizedBox(width:90),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close',style: TextStyle(color:
            //Color.fromARGB(255, 6, 24, 52)
              Colors.red
            ),),
          ),
        ],
      );
    },
  );
}
 */