import 'package:animals/feature/Advice/data/advice.dart';
import 'package:animals/feature/Advice/data/image.dart';
import 'package:animals/feature/Advice/data/page_view_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(pageview());
}

class pageview extends StatefulWidget {
  const pageview({super.key});

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  final _controller = PageController();
  final List<PageViewData> pages = [
    PageViewData(image:imageList[0], image2:imageList[1], title: "Food:", title2: 'Health:', descreption: adviceList[0], descreption2:adviceList[1]),
    PageViewData(image:imageList[2], image2:imageList[3], title: "Health:", title2: 'Communication:', descreption: adviceList[2], descreption2:adviceList[3]),
    PageViewData(image:imageList[4], image2:imageList[5], title: "Clean:", title2: 'Health:', descreption: adviceList[4], descreption2:adviceList[5]),
    PageViewData(image:imageList[6], image2:imageList[7], title: "Clean:", title2: 'House:', descreption: adviceList[6], descreption2:adviceList[7]),
    PageViewData(image:imageList[8], image2:imageList[9], title: "Order:", title2: 'Clean:', descreption: adviceList[8], descreption2:adviceList[9]),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 253, 92, 0),
        body: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            final page = pages[index];
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/advice/logo2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Content
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:150,
                      height: 280,
                      margin: EdgeInsets.all(12),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            page.image,
                            fit: BoxFit.cover,
                            width:150,
                            height:160,
                          ),
                          const SizedBox(width:5),
                          Text(
                            page.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            page.descreption,
                            style: TextStyle(
                              fontSize:13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:60),
                    Row(
                      children: [Spacer(),
                        Container(
                          width:150,
                          height: 280,
                          margin: EdgeInsets.all(12),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                page.image2,
                                fit: BoxFit.cover,
                                width:150,
                                height:160,
                              ),
                              const SizedBox(width:5),
                              Text(
                                page.title2,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                page.descreption2,
                                style: TextStyle(
                                  fontSize:13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );

          },
      ),
    );
  }
}
