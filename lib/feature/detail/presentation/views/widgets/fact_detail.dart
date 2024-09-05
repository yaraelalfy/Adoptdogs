// import 'package:animals/core/styles/styles.dart';
// import 'package:flutter/material.dart';
//
// // ignore: must_be_immutable
// class Fact extends StatelessWidget {
//   final String dogType, imagePath, minLife, maxLife, goodWStrande;
//
//   bool choosen = false;
//
//   Fact(
//       {super.key,
//       required this.dogType,
//       required this.imagePath,
//       required this.minLife,
//       required this.maxLife,
//       required this.goodWStrande});
//
//   //List<String> images = [];
//
//   //List<String> name = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 0),
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           // Row(
//           //   children: [
//
//           //     Text(
//           //       "  $dogType ",
//           //       style: Fonts.first,
//           //       softWrap: true,
//           //       overflow: TextOverflow.ellipsis,
//
//           //     ),
//
//           //     const Spacer(),
//
//           //   ],
//           // ),
//
//           Row(
//             children: [
//               const Icon(Icons.minimize),
//               Text("  min Life: $minLife ", style: Fonts.second),
//             ],
//           ),
//           Row(
//             children: [
//               const Icon(Icons.maximize),
//               Text("  max Life:$maxLife \n", style: Fonts.second),
//             ],
//           ),
//           Row(
//             children: [
//               const Icon(
//                 Icons.people_alt_outlined,
//                 color: Colors.red,
//                 size: 24,
//               ),
//               Text("  goodness with Strangers: $goodWStrande ",
//                   style: Fonts.third),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
