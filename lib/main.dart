import 'package:flutter/material.dart';
import 'package:dropshop/pages/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
    // return const Auth();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ahsan Ali',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            padding: const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
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
              padding: const EdgeInsets.only(right: 10, bottom: 3),
              child: const Icon(
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
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
                //************** i'll change it to carousal slider soon 😊
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                height: 180,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Image.network(
                  //'https://docs.flutter.dev/assets/images/docs/development/ui/splash-screen/android-splash-screen/splash-screens_header.png',
                  'lib/assets/slider.png',
                  fit: BoxFit.fill,
                ),
              ),

              Container( padding: const EdgeInsets.only(left: 15, top: 20, right: 5, bottom: 0),
                child: Row(
                  children:  [


                      const CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 30,
                        child: Icon(
                          Icons.category_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        radius: 30,
                        child: Icon(
                          Icons.image,
                          color: Colors.grey[100],
                          size: 35,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        radius: 30,
                        child: Icon(
                          Icons.image,
                          color: Colors.grey[100],
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
