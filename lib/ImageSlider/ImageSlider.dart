/*import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EdUnited extends StatelessWidget {
  const EdUnited({Key? key}) : super(key: key);

  //This widget is the root of your Application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdUnited',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List imagelist = [
    {"id": 1, "image_path": 'assets/Images/AmbarMishra.jpg'},
    {"id": 2, "image_path": 'assets/Images/GauravMishra.jpg'},
    {"id": 3, "image_path": 'assets/Images/PrashantSingh.jpg'},
    {"id": 4, "image_path": 'assets/Images/Yashi.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                        items: imagelist
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 0.7,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imagelist.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.transparent
                                      : Colors.transparent),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Card(
            elevation: 5.0,
            color: Colors.white,
            child: ListTile(
              title: Text(
                "All content, text, graphics, user interfaces, visual interfaces, photographs, logos, artwork, and computer code within this application are protected by copyright and other intellectual property laws. Unauthorized copying, reproduction, distribution, or modification of the Content is expressly prohibited.\n\n"
                "You may not, under any circumstances:\n"
                "- Copy, duplicate, or replicate any part of the Content.\n"
                "- Modify, alter, or create derivative works based on the Content.\n"
                "- Reproduce, display, or transmit the Content in any form or by any means, including electronic, mechanical, photocopying or otherwise.\n\n"
                "Any unauthorized use or infringement of the Content may result in legal action and liability. EdUnited reserves the right to pursue legal remedies available for the protection of its intellectual property.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                "If you're interested in learning more about our app, please contact us at:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              contentPadding: const EdgeInsets.all(15),
          
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: const Text(
                "developeredunited@gmail.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              onTap: () async {
                String email =
                    Uri.encodeComponent("developeredunited@gmail.com");
                String subject = Uri.encodeComponent("From User");
                print(subject);
                Uri mail = Uri.parse("mailto:$email?subject=$subject");
                if (await launchUrl(mail)) {
                  //email app opened
                } else {
                  //email app is not opened
                }
              },
            ),
          ),
          const Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "We look forward to seeing you on board!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 */
