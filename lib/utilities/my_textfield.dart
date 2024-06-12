import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          //normally white
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          //curve border
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          //clicked on turn yellow
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 210, 202, 62), width: 3),
          ),

          //color of background
          fillColor: Colors.lightBlue[50],
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
