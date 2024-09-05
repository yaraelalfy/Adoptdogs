import 'package:animals/core/styles/styles.dart';
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
                Icons.location_on,
                color: Colors.grey,
                opticalSize: 20,
                //size: 20,
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  const String googleMapsUrl =
                      'https://www.google.com/maps/search/?api=1&query=40.7128,-74.0060';
                  if (await canLaunch(googleMapsUrl)) {
                    await launch(googleMapsUrl);
                  } else {
                    throw 'Could not open the map.';
                  }
                },
                child: Text("Go To Location", style: Fonts.locations),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Close',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    },
  );
}
