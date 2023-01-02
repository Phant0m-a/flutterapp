
import 'package:flutter/material.dart';
import 'package:flutterapp/components/mytextfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Container(

            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SizedBox(
                    height: 50,
                  ),

                  //logo
                  Icon(Icons.ac_unit,size: 100,color: Colors.black,),
                  SizedBox(
                    height: 50,
                  ),

                //welcome, you've been missed
                  Text('Welcome Back you\'ve been missed!',style: TextStyle(color: Colors.grey[700],fontSize:16), ),

                  SizedBox(height: 25),
                  //username textfieled
                MyTextfield(obsecuretext: false,labeltext: 'Email',),

                SizedBox(height: 15),
                //password textfield
                  MyTextfield(obsecuretext: false,labeltext: 'Password',),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
