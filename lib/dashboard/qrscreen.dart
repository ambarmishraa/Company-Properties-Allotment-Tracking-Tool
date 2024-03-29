import 'first.dart';
import 'second.dart';
import 'package:flutter/material.dart';


class qrscan extends StatefulWidget {
  @override
  _qrscanState createState() => _qrscanState();
}

class _qrscanState extends State<qrscan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.qr_code,
                  size: 40,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.qr_code_scanner,
                  size: 40,
                ),
              ),
            ],
          ),
          title: Text(
            '  QR / Barcode Scanner',
          ),
        ),
        body: TabBarView(
          children: [
            First(),
            Second(),
          ],
        ),
      ),
    );
  }
}