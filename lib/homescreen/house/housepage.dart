import 'package:flutter/material.dart';
import 'package:kheloprayagraj/homescreen/house/1%20BHK/1BHK.dart';
import 'package:kheloprayagraj/homescreen/house/2%20BHK/2BHK.dart';
import 'package:kheloprayagraj/homescreen/house/3%20BHK/3BHK.dart';
import 'package:kheloprayagraj/homescreen/house/4%20BHK/4BHK.dart';
import 'package:kheloprayagraj/homescreen/house/5%20BHK/5BHK.dart';

class housepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          color: Colors.black,
          child: ListTile(
              title: const Text(
                "HOUSE",
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
                              builder: (context) => onebhkpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Home.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("1 BHK",
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
                    onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => twobhkpage()));},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Home.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("2 BHK",
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
                              builder: (context) => threebhkpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Home.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("3 BHK",
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
                              builder: (context) => fourbhkpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Home.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("4 BHK",
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
                              builder: (context) => fivebhkpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Home.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("5 BHK",
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
