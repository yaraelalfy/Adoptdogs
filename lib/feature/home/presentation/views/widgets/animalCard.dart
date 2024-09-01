import 'package:animals/core/styles.dart';
import 'package:animals/feature/detail/presentation/manager/cubit.dart';
import 'package:animals/feature/detail/presentation/views/main_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'image_bigger.dart';

class AnimalCard extends StatelessWidget {
  AnimalCard({super.key, required this.imagePath, required this.dogName, required this.dogAge, required this.dogType, required this.choosen});
  final String imagePath,dogName,dogAge, dogType;
  final bool choosen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 15, right: 15),
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
        child: Row(
          children: [
            Container(
              width: 140,
              margin: EdgeInsets.all(13),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: () {
                    image_bigger(context, imagePath);
                  },
                  child: Container(
                    child: Image.asset(
                      "$imagePath",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "$dogName",
                    style: Fonts.dogName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 10),
                  child: Text(
                    "$dogType",
                    style: Fonts.dogType,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range_sharp,
                        color: Colors.deepOrange[200],
                      ),
                      Text(
                        " $dogAge months",
                        style: Fonts.dogAge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) {
                      return Details(dogName: dogName, imagePath: imagePath, type: dogType, age: dogAge,);
                    }));
              },
              child: Icon(
                  Icons.info_rounded,size: 28,
                  color:Colors.orange
              ),
            )
            /*Padding(
                    padding:const EdgeInsets.only(bottom: 70, left: 30, top: 30),
                    child: InkWell(
                      onTap: () {
                        context.read<AppCubit>().choosenHeart();
                      },
                      child: Icon(
                        Icons.favorite,
                        color: context.read<AppCubit>().heart
                            ? Colors.orange
                            : Color.fromARGB(129, 0, 0, 0),
                      ),
                    ),
                  )*/
          ],
        ),
      ),
    );
  }
}