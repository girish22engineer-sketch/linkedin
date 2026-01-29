import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth_service.dart';

import 'loginpage.dart';




class Registerpage extends StatelessWidget {
   Registerpage({super.key});
   TextEditingController namecontroller= TextEditingController();
   TextEditingController agecontroller= TextEditingController();
  TextEditingController emailcontroller =TextEditingController();
TextEditingController passwordcontroller =TextEditingController();
final formkey =GlobalKey<FormState>();
String errormessage ='try again';
void registerpage () async {
  try { 
    UserCredential userCredential = await authService.value.createAccount(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    );

    // Save name and age to Firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user!.uid)
        .set({
      'name': namecontroller.text,
      'age': int.parse(agecontroller.text),
    });

    Get.to(Loginpage());
  } on FirebaseAuthException catch(e) {
    print(e.message);
  } 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: namecontroller,
            decoration: InputDecoration(
              labelText: 'username'
            ),
            
          ),
          TextFormField(
            controller: agecontroller,
            decoration: InputDecoration(
              labelText: 'age'
            ),
          ),
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
          ElevatedButton(onPressed: registerpage, child: Text('register'))
        ],
      ),
    );
  }
}