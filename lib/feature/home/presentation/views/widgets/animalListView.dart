import 'package:animals/core/models/imageList.dart';
import 'package:animals/feature/home/data/api_service.dart';
import 'package:animals/feature/home/presentation/views/widgets/animalCard.dart';
import 'package:flutter/material.dart';

class AnimalListView extends StatelessWidget {
  const AnimalListView({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiAnimalService().featchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = snapshot.data!;
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => AnimalCard(
                   imagePath: list[index].image,
                  //  imagePath: animals[index],
                    dogType: list[index].type.toString(),
                    dogBarking: list[index].barking.toString(),
                    dogEnergy: list[index].energy.toString(),
                    minLife: list[index].minLife.toString(),
                    maxLife: list[index].maxLife.toString(),
                    goodWStrangers: list[index].goodWithStrangers.toString(),

                    choosen: false));
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return  Center(
              child: CircularProgressIndicator(color: Colors.deepOrange.shade300,),
            );
          }
        });


  }
}