// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.hintText, this.onChanged, this.inputtype});
  Function(String)? onChanged;
  String? hintText;
  Icon? icon;
  TextInputType? inputtype;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputtype,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        hintStyle: TextStyle(fontSize: 15, color: Color(0xffA0A0A0)),
        enabledBorder: OutlineInputBorder(
          gapPadding: 12,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xff82C4C3),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: Color(0xff82C4C3),
          ),
        ),
      ),
    );
  }
}
