import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.black54),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black)));
}

TextStyle simpleTextFieldStyle() {
  return const TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle mediumTextFieldStyle() {
  return const TextStyle(color: Colors.black, fontSize: 17);
}
