import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kheloprayagraj/chat_screen.dart';
import 'package:kheloprayagraj/homescreen/book/bookspage.dart';
import 'package:kheloprayagraj/homescreen/cpu/cpupage.dart';
import 'package:kheloprayagraj/homescreen/flats/flatspage.dart';
import 'package:kheloprayagraj/homescreen/headphone/headphonepage.dart';
import 'package:kheloprayagraj/homescreen/house/housepage.dart';
import 'package:kheloprayagraj/homescreen/laptop/laptoppage.dart';
import 'package:kheloprayagraj/homescreen/mobile%20phone/mobilephonepage.dart';
import 'package:kheloprayagraj/homescreen/monitor/monitorpage.dart';
import 'package:kheloprayagraj/homescreen/tablet/tabletpage.dart';
import 'package:kheloprayagraj/homescreen/vehicles/vehiclepage.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MARCOS extends StatefulWidget {
  const MARCOS({Key? key});

  @override
  State<MARCOS> createState() => _MARCOSState();
}

class _MARCOSState extends State<MARCOS> {
  details(String nums, String type) {
    return Row(
      children: [
        Text(
          nums,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(margin: const EdgeInsets.only(top: 10), child: Text(type)),
      ],
    );
  }

  cards(String imageAsset, String text, Function? onTap) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        width: 120,
        height: 120,
        child: Card(
          margin: const EdgeInsets.all(0),
          color: const Color(0xff252525),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imageAsset, // Replace this with the asset path of your image
                  height: 60, // Adjust the height as needed
                ),
                const SizedBox(height: 12),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            color: Colors.black,
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    '\nInitiatives',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'project');
                  },
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  child: const Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'about');
                  },
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.35, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/assets.png',
                    height: 600,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.55),
                child: const Column(
                  children: [
                    Text(
                      'MARCOS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Asset Management Tool',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'FEATURES',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        cards('assets/car.png', 'VEHICLE', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => vehiclepage()));
                        }),
                        cards('assets/Monitor.png', 'MONITOR', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => monitorpage()));
                        }),
                        cards('assets/headphones.png', 'HEADPHONE', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => headphonepage()));
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        cards('assets/mobilephone.png', 'MOBILE PHONE', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => mobilephonepage()));
                        }),
                        cards('assets/Tablet.png', 'TABLET', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => tabletpage()));
                        }),
                        cards('assets/flats.png', 'FLATS', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => flatspage()));
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        cards('assets/Laptop.png', 'LAPTOP', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => laptoppage()));
                        }),
                        cards('assets/Books.png', 'BOOKS', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bookspage()));
                        }),
                        cards('assets/house.png', 'HOUSE', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => housepage()));
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatGPTScreen()),
          );
        },
        child: const FaIcon(FontAwesomeIcons.robot),
        backgroundColor: const Color.fromARGB(255, 255, 153, 60),
      ),
    );
  }
}
