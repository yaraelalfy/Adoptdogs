import 'package:animals/feature/detail/presentation/manager/cubit.dart';
import 'package:animals/feature/detail/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'About.dart';
import 'fact_detail.dart';
import 'photo.dart';

class detail_body extends StatelessWidget {
  const detail_body({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
  final String dogName,imagePath,type,age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              // context.read<AppCubit>().choosenHeart();
              // context.read<AppCubit>().isavailable();
              context.read<FavouriteCubit>().toggleFavorite(dogName);

            },
            child: BlocBuilder<FavouriteCubit, FavouriteState>(
              builder: (context, state) {
                bool isFavorite = context.read<FavouriteCubit>().isFavorite(dogName);

                return Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.red : Color.fromARGB(129, 0, 0, 0),
                );
              },
            ),
          ),
          //Icon(Icons.shopping_cart)
        ],
      ),
      body: Column(
        children: [
          fact_detail(dogName: dogName, imagePath:imagePath, type: type, age: age,),
          Photo(imagePath: imagePath,),
          About()
        ],
      ),
    );
  }
}

