import 'package:flutter/material.dart';

class buttonn extends StatelessWidget {
  buttonn({required this.text, this.onPressed});

  String? text;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(355, 60),
            backgroundColor: Color(0xff82C4C3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child:
            Text(text!, style: TextStyle(fontSize: 18, color: Colors.white)));
  }
}
