import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String btnText;
  VoidCallback onPressed;

  MyButton({super.key, required this.onPressed, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(btnText),
    );
  }
}
