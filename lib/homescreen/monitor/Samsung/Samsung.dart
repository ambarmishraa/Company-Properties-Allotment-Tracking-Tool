import 'package:flutter/material.dart';

class samsungmonpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          color: Colors.black,
          child: ListTile(
              title: const Text(
                "Asset Details",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              contentPadding: const EdgeInsets.all(0),
              ),
        ),
        Row(
          children: [
            Expanded(
              child: Card(
                elevation: 0,
                color: Colors.black,
                child: Container(
                  height: 250,
                  width: 250,
                  child: InkWell(

                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/renaultcar.png',
                            height: 200,
                            width: 200,
                          ),
                          const Text("Hyundai Cruze LTZ",
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30))
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
                color: Colors.grey,
                child: Container(
                  height: 60,
                  width: 30,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const Text("Name: Renault Cruze LTZ",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
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
                color: Colors.grey,
                child: Container(
                  height: 60,
                  width: 30,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const Text("Category: Vehicle",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.grey,
                child: Container(
                  height: 60,
                  width: 30,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const Text("Asset Reference No.: 779895686947647",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
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
                color: Colors.black,
                child: Container(
                  height: 10,
                  width: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                color: Colors.grey,
                child: Container(
                  height: 80,
                  width: 70,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          const Text("Current Allocation:\nSenior Manager GAURAV MISHRA",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),


        Card(
          elevation: 5.0,
          color: Colors.grey,
          shadowColor: Colors.white,
          child: ListTile(
              title: const Text(
                "Previous Allocation\nEmployee Id: 78464678",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              trailing: const Text("˅",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
              contentPadding: const EdgeInsets.all(6),
              onTap: () {

              }),
        ),


        Card(
          elevation: 5.0,
          color: Colors.grey,
          shadowColor: Colors.white,
          child: ListTile(
              title: const Text(
                "Asset Status\nLast Repaired: 23/08/2022",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              trailing: const Text("˅",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
              contentPadding: const EdgeInsets.all(6),
              onTap: () {

              }),
        ),
      ],
    );
  }
}
