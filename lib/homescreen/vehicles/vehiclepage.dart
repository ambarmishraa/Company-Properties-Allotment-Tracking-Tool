import 'package:flutter/material.dart';
import 'package:kheloprayagraj/homescreen/vehicles/Hyundai/hyundai.dart';
import 'package:kheloprayagraj/homescreen/vehicles/Maruti/maruti.dart';
import 'package:kheloprayagraj/homescreen/vehicles/Renault/renault.dart';
import 'package:kheloprayagraj/homescreen/vehicles/Skoda/skoda.dart';
import 'package:kheloprayagraj/homescreen/vehicles/Tata/tata.dart';

class vehiclepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          color: Colors.black,
          child: ListTile(
              title: const Text(
                "VEHICLE",
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
                                    builder: (context) => renaultpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/vechiles.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Renault",
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
                              builder: (context) => tatapage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/vechiles.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Tata",
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
                              builder: (context) => marutipage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/vechiles.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Maruti",
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
                              builder: (context) => hyundaipage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/vechiles.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Hyundai",
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
                              builder: (context) => skodapage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/vechiles.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("SKODA",
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
