// import 'package:animals/feature/detail/presentation/manager/cubit.dart';
// import 'package:animals/feature/detail/presentation/manager/state.dart';
// import 'package:animals/feature/detail/presentation/views/widgets/About.dart';
// import 'package:animals/feature/detail/presentation/views/widgets/fact_detail.dart';
// import 'package:animals/feature/detail/presentation/views/widgets/photo.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// class DetailBody extends StatelessWidget {
//   final String dogName, imagePath, minLife, maxLife, goodWS;
//
//   const DetailBody(
//       {super.key,
//         required this.dogName,
//         required this.imagePath,
//         required this.minLife,
//         required this.maxLife,
//         required this.goodWS});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("$dogName Info" ,style: const TextStyle(fontWeight: FontWeight.bold),),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.white,
//                 Colors.orange.shade100,
//
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//
//             ),
//           ),
//         ),
//         actions: [
//           InkWell(
//             onTap: () {
//               context.read<FavouriteCubit>().toggleFavorite(dogName);
//             },
//             child: BlocBuilder<FavouriteCubit, FavouriteState>(
//               builder: (context, state) {
//                 bool isFavorite =
//                 context.read<FavouriteCubit>().isFavorite(dogName);
//
//                 return Padding(
//                   padding: const EdgeInsets.only(right: 20),
//                   child: Icon(
//                     Icons.favorite,
//                     color: isFavorite
//                         ? Colors.red
//                         : const Color.fromARGB(129, 94, 88, 88),
//                   ),
//                 );
//               },
//             ),
//           ),
//           //Icon(Icons.shopping_cart)
//         ],
//       ),
//       body: Column(
//         children: [
//           Fact(
//             dogType: dogName,
//             imagePath: imagePath,
//             minLife: minLife,
//             maxLife: maxLife,
//             goodWStrande: goodWS,
//           ),
//           Photo(
//             imagePath: imagePath,
//           ),
//           const About()
//           //About()
//         ],
//       ),
//     );
//   }
// }
//
//
//
