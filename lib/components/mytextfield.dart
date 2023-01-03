import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  var controller;

  String labeltext;

  bool obsecuretext;

  MyTextfield(
  {
    required this.controller,
    required this.labeltext,
    required this.obsecuretext,
}
      );
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: obsecuretext,
        controller: controller,
        decoration: InputDecoration(
          labelText: labeltext,
          hintStyle:  TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white ,)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal:20,vertical: 25),
        ),

      ),
    );
  }
}
