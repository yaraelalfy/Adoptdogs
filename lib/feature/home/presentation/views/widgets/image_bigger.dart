import 'package:flutter/material.dart';

void image_bigger(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(7),
        content: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close',style: TextStyle(color: Colors.orange),),
          ),
        ],
      );
    },
  );
}