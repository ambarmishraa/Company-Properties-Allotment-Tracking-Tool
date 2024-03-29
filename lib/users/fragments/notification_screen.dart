import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(child: Image.asset("assets/Images/notification.png",
          width: 240,),
        ),

        const SizedBox(height: 20,),

        Card(
          elevation: 5.0,
          color: Colors.grey,
          shadowColor: Colors.white,
          child: ListTile(
              title: const Text(
                "New Update Available",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              trailing: const Text("5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
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
                "New Asset Available For Collection",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              trailing: const Text("11",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
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
                "Asset Expiry\nDate:20/04/2024",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              trailing: const Text("",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
              contentPadding: const EdgeInsets.all(6),
              onTap: () {

              }),
        ),
      ],
    );
  }
}