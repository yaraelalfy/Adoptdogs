import 'package:animals/core/styles/styles.dart';
import 'package:animals/feature/detail/presentation/manager/cubit.dart';
import 'package:animals/feature/detail/presentation/manager/state.dart';
import 'package:animals/feature/detail/presentation/views/widgets/TabBar_Parts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class dog_profile extends StatelessWidget {
  final String dogName, imagePath, minLife, maxLife, goodWS;

  const dog_profile({super.key, required this.imagePath,required this.minLife, required this.maxLife,required this.dogName, required this.goodWS});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                image: DecorationImage(
                  image: NetworkImage(imagePath), // Correct image path usage
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: InkWell(
                onTap: () {
                  context.read<FavouriteCubit>().toggleFavorite(dogName);
                },
                child: BlocBuilder<FavouriteCubit, FavouriteState>(
                  builder: (context, state) {
                    bool isFavorite =
                    context.read<FavouriteCubit>().isFavorite(dogName);

                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.favorite,
                        color: isFavorite
                            ? Colors.red
                            : Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dogName, style:Fonts.first),

              Text(" min Life: $minLife ", style:Fonts.third),
              Text(" max Life:$maxLife \n", style: Fonts.third),
              SizedBox(height: 15),
              TabBarParts(goodWS: goodWS,),
            ],
          ),
        ),
      ],
    );
  }
}