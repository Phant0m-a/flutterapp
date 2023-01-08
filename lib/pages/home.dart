import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var user ;
  @override
  void initState() {
   user = FirebaseAuth.instance.currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(user)),
    );
  }
}
