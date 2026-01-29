import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Newhomepage extends StatefulWidget {
  const Newhomepage({super.key});

  @override
  State<Newhomepage> createState() => _NewhomepageState();
}

class _NewhomepageState extends State<Newhomepage> {
  
  String name='';
  int age= 0;
   
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUserData();
  }

   void fetchUserData() async {
    // Get current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // Fetch user document from Firestore
      DocumentSnapshot doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (doc.exists) {
        setState(() {
          name = doc['name'];
          age = doc['age'];
        });
      }
    }
  }

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(' hi $name, your age $age'),
      ),
    );
  }
}