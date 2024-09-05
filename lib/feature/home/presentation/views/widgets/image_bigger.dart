import 'package:flutter/material.dart';

void image_bigger(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: Image.network(
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