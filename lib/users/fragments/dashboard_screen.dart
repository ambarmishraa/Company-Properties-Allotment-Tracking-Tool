import 'package:flutter/material.dart';
import 'package:kheloprayagraj/dashboard/issuehomescreen.dart';
import 'package:kheloprayagraj/dashboard/return.dart';
import 'package:kheloprayagraj/dashboard/view.dart';
import 'package:kheloprayagraj/homescreen/homescreen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          color: Colors.black,
          child: ListTile(
              title: const Text(
                "Welcome! Ambar Mishra",
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
                              builder: (context) => issuehomescreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/issue.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("ISSUE",
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
                              builder: (context) => DashboardReturn()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/return.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("RETURN",
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
                color: Colors.lightBlueAccent
                ,
                child: Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardView()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/view.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("VIEW",
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
