import 'package:flutter/material.dart';
import 'package:kheloprayagraj/users/Authentication/login_screen.dart';
import 'package:kheloprayagraj/users/Authentication/signup_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
      UserAccountsDrawerHeader(
      accountName: Text(""), accountEmail: Text(""),
      currentAccountPicture: CircleAvatar(child: ClipOval(child: Image.asset('assets/Images/icon.png',
      width: 90,
      height: 90,
      fit: BoxFit.cover,
      ),)),
      decoration: BoxDecoration(
        color: Colors.blue,
        image:DecorationImage(
        image: AssetImage('assets/Images/4.png',),
        fit:BoxFit.cover,
        ),),
      ),
      ListTile(
        leading: Icon(Icons.login),
        title: Text("Login",style: TextStyle(fontSize: 20)),
        onTap: (){
Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
        );
        },
      ),ListTile(
        leading: Icon(Icons.app_registration),
        title: Text("Register",style: TextStyle(fontSize: 20),),
        onTap: (){
Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
        );
        },
      )
    ],),
    );
  }
}