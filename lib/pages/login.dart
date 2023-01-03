import 'package:flutter/material.dart';
import 'package:flutterapp/components/mytextfield.dart';
import 'package:flutterapp/components/tilebox.dart';
import 'package:flutterapp/components/mybutton.dart';
class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
//controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

//signin user
  void signInUser() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),

                  //logo
                  Icon(
                    Icons.ac_unit,
                    size: 100,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //welcome, you've been missed
                  Text(
                    'Welcome Back you\'ve been missed!',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),

                  SizedBox(height: 25),
                  //username textfieled
                  MyTextfield(
                    obsecuretext: false,
                    labeltext: 'Email',
                    controller: usernameController,
                  ),

                  SizedBox(height: 15),
                  //password textfield
                  MyTextfield(
                    obsecuretext: false,
                    labeltext: 'Password',
                    controller: passwordController,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  //welcome, you've been missed
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style:
                          TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),
                  MyButton(onTap: signInUser),


                  SizedBox(height: 50,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider(
                        thickness: 1, color: Colors.grey[400],)),
                      Text('or continue with', style: TextStyle(
                          color: Colors.grey[700]
                      ),),
                      Expanded(child: Divider(
                        thickness: 1, color: Colors.grey[400],)),

                    ],
                  ),

                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TileBox(onPressed: () {  }, iconD: Icons.gpp_good_sharp,),
                      SizedBox(width: 25,),
                      TileBox(onPressed: () {  }, iconD: Icons.apple_sharp,),
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?', style: TextStyle(
                          color: Colors.grey[700]
                      ),),
                      SizedBox(width: 5,),
                      Text('Register now', style: TextStyle(
                          color: Colors.blue,

                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}