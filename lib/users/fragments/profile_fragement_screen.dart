import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kheloprayagraj/users/Authentication/login_screen.dart';
import 'package:kheloprayagraj/users/userPreferences/current_user.dart';
import 'package:kheloprayagraj/users/userPreferences/user_preferences.dart';


class ProfileFragementScreen extends StatelessWidget {

  final CurrentUser _currentUser = Get.put(CurrentUser());

  signOutUser() async {
    var resultResponse = await Get.dialog(
      AlertDialog(
      backgroundColor: Colors.grey,
      title: const Text(
        "Logout",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        "Are you sure ? \n You want to logout from app?"),
        actions: [
          TextButton(onPressed: (){
            Get.back();
          }, 
          child: const Text(
            "No",
            style: TextStyle(
              color: Colors.black ,
            ),
          ),
          ),
          TextButton(onPressed: (){
            Get.back(result: "loggedOut");
          }, 
          child: const Text(
            "Yes",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          ),
        ],
    ),
    );

    if(resultResponse == "loggedOut")
    {
      RememberUserPrefs.removeUserInfo().then((value)
      {
        Get.off(LoginScreen());
      });
    }
  }

Widget userInfoItemProfile(IconData iconData,String userData){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color:Colors.white, 
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    child: Row(children: [
      Icon(iconData,
      size: 30,
      color: Colors.black,),
      const SizedBox(width: 16,),
      Text(userData,
      style: const TextStyle(
        fontSize: 15,
      ),)
    ],),
  );
}
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: [
      Center(child: Image.asset("assets/Images/man.png",
      width: 240,),
      ),

      const SizedBox(height: 20,),

      userInfoItemProfile(Icons.person, _currentUser.user.user_name),

      const SizedBox(height: 20,),

      userInfoItemProfile(Icons.email, _currentUser.user.user_email),

      const SizedBox(height: 20,),

      Center(
        child: Material(color: Colors.redAccent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: (){
            signOutUser();
        },
        borderRadius: BorderRadius.circular(32),
        child: const Padding(padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 12
        ),
        child: const Text("Sign Out",
        style: TextStyle(color: Colors.white,
        fontSize: 16),    
        ),
        ),
        ),
        ),
      ),

      Card(
        elevation: 5.0,
        color: Colors.grey,
        shadowColor: Colors.white,
        child: ListTile(
            title: const Text(
              "Allocated Assets",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: const Text("17",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
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
              "Current Allocations",
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
              "Allocate Asset",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: const Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
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
              "Allocated Item",
              style: TextStyle(
                fontSize: 30,
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
              "Item Status",
              style: TextStyle(
                fontSize: 30,
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
              "History",
              style: TextStyle(
                fontSize: 30,
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