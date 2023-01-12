// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var user;
  late String username;
  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser;
    username = user.email;
    print(username);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.child_care),
          title: Text('Samosa'),
          centerTitle: true,
          actions: [
          IconButton(
              onPressed: (() {
                FirebaseAuth.instance.signOut();
                Navigator.pop(context);
              }),
              icon: Icon(Icons.logout_rounded))
        ]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text(username.toString())),
            ],
          ),
        ),
      ),
    );
  }
}
