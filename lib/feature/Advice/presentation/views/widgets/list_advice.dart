import 'package:animals/feature/Advice/data/advice.dart';
import 'package:animals/feature/Advice/data/image.dart';
import 'package:flutter/material.dart';

class ListAdvice extends StatelessWidget {
  const ListAdvice({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: adviceList.length,
        itemBuilder: (context, index) {
          return Container(margin: EdgeInsets.only(top: 30, left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  width: 1.6, color: const Color.fromARGB(143, 255, 86, 34)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(imageList[index]),
              ),
              title: Text(
                adviceList[index],
                style: TextStyle(color: index.isEven ? Colors.brown : Colors.black),
              ),
            ),
          );
        }
    );
  }
}
