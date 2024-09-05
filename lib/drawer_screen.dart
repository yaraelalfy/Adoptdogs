
import 'package:animals/feature/home/presentation/views/widgets/about.dart';
import 'package:animals/feature/home/presentation/views/widgets/contact.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(top: 80, right: 12, left: 12),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(174, 255, 224, 178)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const AboutOrganization();
                  }));
                },
                child: const Center(
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(right: 12, left: 12),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(174, 255, 224, 178)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Contact();
                  }));
                },
                child: const Center(
                  child: Text(
                    "Contact us",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Image.asset("images/splashScreen/8.png")
        ],
      ),
    );
  }
}