import 'package:flutter/material.dart';
import 'package:kheloprayagraj/users/Authentication/login_screen.dart';
import 'package:kheloprayagraj/users/fragments/dashboard_of_fragments.dart';
import 'package:kheloprayagraj/users/userPreferences/user_preferences.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MARCOS());
}

class MARCOS extends StatelessWidget {
  const MARCOS({Key? key}) : super(key: key);

  //This widget is the root of your Application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MARCOS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: RememberUserPrefs.readUserInfo(),
        builder: (context, dataSnapShot) {
          if (dataSnapShot.data == null) {
            return LoginScreen();
          } else {
            return DashboardOfFragments();
          }
        },
      ),
    );
  }
}
