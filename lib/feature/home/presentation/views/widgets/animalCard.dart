import 'package:animals/core/styles/styles.dart';
import 'package:animals/feature/detail/presentation/views/main_detail.dart';
import 'package:flutter/material.dart';
import 'image_bigger.dart';

class AnimalCard extends StatelessWidget {
  final String imagePath, dogType, dogBarking, dogEnergy , minLife,maxLife,goodWStrangers;
  final bool choosen;

  const AnimalCard({super.key, required this.imagePath, required this.dogType, required this.dogBarking, required this.dogEnergy, required this.minLife, required this.maxLife, required this.goodWStrangers, required this.choosen});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Container(
        margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
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
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 90,
              margin: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: () {
                    image_bigger(context, imagePath);
                  },
                  // child: Image.asset(
                  //   imagePath,
                  //   fit: BoxFit.contain,
                  // ),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      dogType,
                      softWrap: true,
                      style: Fonts.dogName,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, left: 10),
                    child: Text(
                      "$dogBarking  PlayFulness",
                      softWrap: true,
                      style: Fonts.dogType,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.energy_savings_leaf_outlined,
                          color: Colors.deepOrange[200],
                        ),
                        Text(
                          " $dogEnergy powerful",
                          softWrap: true,
                          style: Fonts.dogAge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            // Move the icon here to keep it on the right
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  //return DetailBody(dogName: dogType, imagePath: imagePath, minLife: minLife,maxLife: maxLife,goodWS: goodWStrangers,);
                  return MainDetails(dogName: dogType, imagePath: imagePath, minLife: minLife,maxLife: maxLife,goodWS: goodWStrangers, );
                }));
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.info_rounded, size: 28, color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}