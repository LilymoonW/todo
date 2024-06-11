import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String name;
  VoidCallback onPressed;
  MyButton({super.key, required this.name, required, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color.fromRGBO(8, 48, 81, 1),
      child: Expanded(
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
