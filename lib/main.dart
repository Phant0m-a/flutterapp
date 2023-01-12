import 'package:dropshop/components/testproduct_card.dart';
import 'package:dropshop/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:dropshop/pages/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../modals/product.dart';
import '../components/product_card.dart';

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
  void initState() {
    // checks if user is currently signed-in
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  //Events are fired when the following occurs:
  //
  // Right after the listener has been registered.
  // When a user is signed in.
  // When the current user is signed out.
  // When there is a change in the current user's token.

  List productList = Product.ProductList;
  @override
  Widget build(BuildContext context) {
    // return const Auth();
    // return MaterialApp(home: Auth());
    var wDefaultPadding = 10;
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
            padding:
                const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
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
                  child:
                      // Image.network(
                      //   'https://docs.flutter.dev/assets/images/docs/development/ui/splash-screen/android-splash-screen/splash-screens_header.png',
                      //   //
                      //   fit: BoxFit.fill,
                      // ),
                      Image.asset(
                    'lib/assets/slider.PNG',
                    fit: BoxFit.fill,
                  )),

              Container(
                padding: const EdgeInsets.only(
                    left: 15, top: 20, right: 5, bottom: 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          radius: 30,
                          child: Icon(
                            Icons.category_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Categories')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, top: 0, right: 5, bottom: 0),
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
                        SizedBox(height: 20),
                        Text('Men')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, top: 0, right: 5, bottom: 0),
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
                        SizedBox(height: 20),
                        Text('Women')
                      ],
                    ),
                  ],
                ),
              ),

              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 5, bottom: 5, right: 15),
                    child: Text(
                      'Products for you',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),

              // Grid
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Image.asset(
                          'lib/assets/slider.PNG',
                          fit: BoxFit.fill,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text('Casual Men Shirt'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs. 850',
                                    style: TextStyle(
                                      color: Colors.red[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(
                                    Icons.share_rounded,
                                    color: Colors.redAccent,
                                    size: 26,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        color: Colors.pink[100],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text(
                                      'Free Delivery',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            color: Colors.red[100],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                      // ,SizedBox(width: 2,),
                                      ,
                                      Text(
                                        'km',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),

              //...
              Column(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //       vertical: wDefaultPadding.toDouble()),
                  //   child: Image.asset(
                  //     'lib/assets/slider.PNG',
                  //     height: 200,
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    mainAxisSpacing: wDefaultPadding * 2,
                    crossAxisSpacing: wDefaultPadding * 2,
                    crossAxisCount: 3,
                    children: List.generate(
                      productList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 2),
                        child:

                            //  ProductCard(
                            //   cardItem: productList[index],
                            // ),
                            Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          height: 100,
                          child: Center(child: Text('card')),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //...
            ],
          )),
        ),
      ),
    );
  }
}
