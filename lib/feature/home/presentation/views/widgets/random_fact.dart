/*import 'package:animals/feature/home/presentation/views/widgets/loading.dart';
import 'package:flutter/material.dart';

class RandomFact extends StatelessWidget {
  const RandomFact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text(
            "More About Animals?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return LoadingPage();
              }));
            },
            child: Text(
              " click here",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.deepOrange[300],
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.deepOrange[300]),
            ),
          ),
        ))
      ],
    );
  }
}
*/