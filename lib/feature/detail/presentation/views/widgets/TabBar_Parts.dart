import 'package:animals/core/styles/styles.dart';
import 'package:animals/feature/detail/presentation/views/widgets/alert.dart';
import 'package:animals/feature/detail/presentation/views/widgets/info_part.dart';
import 'package:flutter/material.dart';

class TabBarParts extends StatelessWidget {
  final String goodWS;

  const TabBarParts({super.key, required this.goodWS});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'About'),
              Tab(text: 'location'),
            ],
          ),
          Container(
            height: 100,
            child: TabBarView(
              children: [
                InfoPart(goodWS: goodWS,),
                Center(child: Text(
                    '''\nThis pet is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs.''',
                  ),),
                Center(
                    child: InkWell(
                      onTap: () {
                        added(context);
                      },
                      child: Container(
                        width: 170,
                        height: 65,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 213, 81, 23),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              " See Location",
                              style: Fonts.location,
                            ),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
