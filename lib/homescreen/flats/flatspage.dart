import 'package:flutter/material.dart';
import 'package:kheloprayagraj/homescreen/flats/Bandara/Bandara.dart';
import 'package:kheloprayagraj/homescreen/flats/Delhi/Delhi.dart';
import 'package:kheloprayagraj/homescreen/flats/Mumbai/Mumbai.dart';
import 'package:kheloprayagraj/homescreen/flats/Pune/Pune.dart';
import 'package:kheloprayagraj/homescreen/flats/Rajasthan/Rajasthan.dart';

class flatspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          color: Colors.black,
          child: ListTile(
              title: const Text(
                "FLATS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              contentPadding: const EdgeInsets.all(6),
              onTap: () {}),
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.redAccent,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bandarapage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/flats.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Bandara",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.lightGreenAccent,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => mumbaipage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/flats.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Mumbai",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.lightBlueAccent,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => delhipage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/flats.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Delhi",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.yellowAccent,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => punepage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/flats.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Pune",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.greenAccent,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => rajasthanpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/flats.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Rajasthan",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
