import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkedin/pages/newhomepage.dart';

import '../auth_service.dart';
import 'homepage.dart';
class Loginpage extends StatelessWidget {
   Loginpage({super.key});
  TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller =TextEditingController();
final formkey = GlobalKey<FormState>();
String errormessage="";
void login() async {
  try {
    UserCredential user = await authService.value.signIn(
      email: emailcontroller.text.trim(),
      password: passwordcontroller.text.trim(),
    );

    if (user.user != null) {
      // Navigate to Newhomepage
      Get.to(() => Newhomepage()); // use Get.off to remove login page from back stack
    }
  } on FirebaseAuthException catch (e) {
    print(e.message);
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          TextFormField(
            controller: emailcontroller,
            decoration: InputDecoration(
              hintText: 'email'
            ),
          ),
          TextFormField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              hintText: 'pasword'
            ),
          ),
          ElevatedButton(onPressed: login, child: Text('register'))
        ],
      ),
    );
  }
}