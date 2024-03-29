import 'package:flutter/material.dart';
import 'package:kheloprayagraj/homescreen/book/Computer/Computer.dart';
import 'package:kheloprayagraj/homescreen/book/Geography/Geography.dart';
import 'package:kheloprayagraj/homescreen/book/Indian%20History/IndianHistory.dart';
import 'package:kheloprayagraj/homescreen/book/Mathematics/Mathematics.dart';

class bookspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          color: Colors.black,
          child: ListTile(
              title: const Text(
                "BOOKS",
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
                              builder: (context) => indianhistorypage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Books.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Indian History",
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
                              builder: (context) => geographypage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Books.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Political Science",
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
                              builder: (context) => geographypage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Books.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Geography",
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
                              builder: (context) => mathematicspage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Books.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Mathematics",
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
                              builder: (context) => computerpage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/Books.png',
                            height: 100,
                            width: 100,
                          ),
                          const Text("Computer",
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
