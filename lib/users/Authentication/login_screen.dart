import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kheloprayagraj/api_connection/api_connections.dart';
import 'package:kheloprayagraj/users/Authentication/signup_screen.dart';
import 'package:http/http.dart' as http;
import 'package:kheloprayagraj/users/fragments/dashboard_of_fragments.dart';
import 'package:kheloprayagraj/users/model/user.dart';
import 'package:kheloprayagraj/users/userPreferences/user_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  loginUserNow() async{
    try{
      var res = await http.post(
        Uri.parse(API.login),
    body: {
      "user_email": emailController.text.trim(),
      "user_password": passwordController.text.trim(),
    },
    );

    if(res.statusCode == 200)
    {
    var resBodyOfLogin = jsonDecode(res.body);
    if(resBodyOfLogin['success'] == true){
      Fluttertoast.showToast(msg:"Login Succesful");

      User userInfo = User.fromJson(resBodyOfLogin["userData"]);

      //save user info to local storage using shared prefreneces
     await RememberUserPrefs.storeUserInfo(userInfo);

      Future.delayed(Duration(milliseconds: 2000),(){
        Get.to(DashboardOfFragments());
      });
    }
    else{
      Fluttertoast.showToast(msg: "Try Again");
    }
    }
    }
    catch(errorMsg){
      print("Error :: " + errorMsg.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:LayoutBuilder( builder:(context,cons)
      {
        return ConstrainedBox(constraints:BoxConstraints(minHeight: cons.maxHeight,),
        child: SingleChildScrollView(child: Column(children: [
          //Login screen header
          SizedBox(width: MediaQuery.of(context).size.width, height: 285,
          child:Image.asset("assets/Images/assets.png"),
          ),

          //login screen sign in form
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(decoration: const BoxDecoration(color: Colors.white24,
          borderRadius: BorderRadius.all(Radius.circular(60),
          ),
          boxShadow:[
            BoxShadow(
              blurRadius: 0,
              color: Colors.black26,
              offset: Offset(0,-3),
            )
          ]
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30,30,30,8),
            child: Column(children: [

              //email-password-login button
              Form(key:formKey,
              child: Column(
                children: [

                  //Getting Email form User
                  TextFormField(
                    controller: emailController,
                    validator: (val) => val == "" ? "Please write email" : null,
                    decoration: InputDecoration( prefixIcon:Icon(Icons.email,
                     color:Colors.black,
                    ),
                    hintText:"Email...",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white60,
                    ),
                    ),
                    enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white60,
                    ),
                    ),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white60,
                    ),
                    ),
                    disabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.white60,
                    ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 14,
                    vertical: 6),
                    fillColor: Colors.white,
                    filled:true,
                    ),
                  ),

                const SizedBox(height: 18,),

                  //Password from user
                  Obx(()=> TextFormField(
                      controller: passwordController,
                      obscureText: isObsecure.value,
                      validator: (val) => val == "" ? "Please write password" : null,
                      decoration: InputDecoration( prefixIcon:Icon(Icons.vpn_key_sharp,
                       color:Colors.black,
                      ),
                      suffixIcon: Obx(() => GestureDetector(onTap: (){
                        isObsecure.value = !isObsecure.value;
                      },
                      child: Icon(isObsecure.value ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                      ),)),
                      hintText:"Password...",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white60,
                      ),
                      ),
                      enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white60,
                      ),
                      ),
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white60,
                      ),
                      ),
                      disabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.white60,
                      ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14,
                      vertical: 6),
                      fillColor: Colors.white,
                      filled:true,
                      ),
                    ),
                  ),

                  const SizedBox(height: 18,),

                  //Button Design
                  Material(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: (){
                        if(formKey.currentState!.validate()){
                           loginUserNow();
                        }
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 28,
                        ),
                        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                    ),
                  )
                ],
              ),
              ),

              const SizedBox(height: 18,),
              
              //More functionalities in login form(Don't have account-Register here button)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Dont't have Account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
                  },
                  child: const Text("Register Here",style: TextStyle(color: Colors.purpleAccent,fontSize: 16),))
                ],
              ),

              const Text("Or",style: TextStyle(color: Colors.grey,fontSize: 16,
              ),
              ),

              //For admin(admin text-button)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Are you an Admin?"),
                  TextButton(onPressed: (){
                    Get.to(DashboardOfFragments());
                  },
                  child: const Text("Click Here",style: TextStyle(color: Colors.purpleAccent,fontSize: 16),))
                ],
              )
            ],
            ),
          ),
          ),
        ),
        ],
        ),
        ),
        );
      },
      ),
    );
  }
}