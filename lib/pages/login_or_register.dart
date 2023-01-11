import 'package:dropshop/pages/login.dart';
import 'package:dropshop/pages/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //show initially login page
  bool showLoginPage = true;

  void toggleSwitch() {
    if (showLoginPage) {
      setState(() {
        print('switching');
        showLoginPage = !showLoginPage;
      });
    } else {
      setState(() {
        showLoginPage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(onTap: toggleSwitch);
    } else {
      return Register(
        onTap: toggleSwitch,
      );
    }
  }
}
