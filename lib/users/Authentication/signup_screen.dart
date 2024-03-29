import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kheloprayagraj/users/Authentication/login_screen.dart';
import 'package:http/http.dart' as http;
import 'package:kheloprayagraj/api_connection/api_connections.dart';
import 'package:kheloprayagraj/users/model/user.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  validateUserEmail() async{
    try{
      var res = await http.post(Uri.parse(API.validateEmail),
      body: {
        'user_email': emailController.text.trim(),
      },
      );
      if(res.statusCode == 200) //connection with API success
      {
      var resBodyOfValidateEmail = jsonDecode(res.body);

      if(resBodyOfValidateEmail['emailFound'] == true){
        Fluttertoast.showToast(msg: "Email Already Exist");
      }
      else{
        //register and save new user response
        registerAndSaveUserRecord();
      }
      }
    }
    catch(e){
      print(e.toString());
    //Fluttertoast.showToast(msg: e.toString());
    }
  }

registerAndSaveUserRecord() async{
  User userModel = User(
    1,
    nameController.text.trim(),
    emailController.text.trim(),
    passwordController.text.trim(),
  );

  try{
    var res = await http.post(Uri.parse(API.signUp),
    body: userModel.toJson(),
    );

    if(res.statusCode == 200){
      print('Response Body: ${res.body}');

    var resBodyOfSignUp = jsonDecode(res.body);

    if(resBodyOfSignUp['success'] == true){
      Fluttertoast.showToast(msg:"SignUp Succesful");

      setState(() {
        nameController.clear();
        emailController.clear();
        passwordController.clear();
      });
      
    }
    else{
      Fluttertoast.showToast(msg: "Try Again");
    }
    }
  }
  catch(e){
    print(e.toString());
    Fluttertoast.showToast(msg: e.toString());
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
          //SignUp screen header
          SizedBox(width: MediaQuery.of(context).size.width, height: 285,
          child:Image.asset("assets/Images/assets.png"),
          ),

          //signup screen signup form
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

                  //name field
                  TextFormField(
                    controller: nameController,
                    validator: (val) => val == "" ? "Please Write Name" : null,
                    decoration: InputDecoration( prefixIcon:Icon(Icons.person,
                     color:Colors.black,
                    ),
                    hintText:"Name...",
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
                  Obx(
                    ()=>TextFormField(
                      controller: passwordController,
                      obscureText: isObsecure.value,
                      validator: (val) => val == "" ? "Please write password" : null,
                      decoration: InputDecoration( prefixIcon:Icon(Icons.vpn_key_sharp,
                       color:Colors.black,
                      ),
                      suffix: Obx(() => GestureDetector(onTap: (){
                        isObsecure.value = !isObsecure.value;
                      },
                      child: Icon(
                        isObsecure.value ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black,
                      ),),),
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
                          //validate the email
                          validateUserEmail();
                        }
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 28,
                        ),
                        child: Text("SignUp",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                    ),
                  )
                ],
              ),
              ),

              const SizedBox(height: 16,),
              
              //More functionalities in SignUp form(Already have account-button)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have Account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                );
                  },
                  child: const Text("Login Here",style: TextStyle(color: Colors.purpleAccent,fontSize: 16),))
                ],
              ),
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