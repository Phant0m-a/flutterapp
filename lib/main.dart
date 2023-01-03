import 'package:flutter/material.dart';
import 'package:flutterapp/pages/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return const Auth();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ahsan Ali',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            padding: EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[400],
              radius: 20,
              child: Icon(
                Icons.person,
                color: Colors.grey[100],
                size: 35,
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10, bottom: 3),
              child: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.red,
                size: 25,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              //you can rebuild the APPBAR using ROW!
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search'),
                ),
              ),

              Container(
                // need a
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                height: 180,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child:Image.network('https://docs.flutter.dev/assets/images/docs/development/ui/splash-screen/android-splash-screen/splash-screens_header.png',fit: BoxFit.fill,),),


            ],
          )),
        ),
      ),
    );
  }
}
