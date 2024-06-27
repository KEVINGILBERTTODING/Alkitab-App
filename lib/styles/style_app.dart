import 'package:flutter/material.dart';

class StyleApp {
  static const Color primary = Color(0xff09CF83);
  static const Color banner = Color(0xffEEE8DA);
  static const Color white = Color(0xffffffff);
  static const Color grey = Color.fromARGB(255, 235, 235, 235);
  static const Color black = Colors.black;
  static const Color light_black = Color.fromARGB(255, 68, 68, 68);

  static styleBold(double size, Color color) {
    return TextStyle(fontFamily: 'rbbold', fontSize: size, color: color);
  }

  static styleReg(double size, Color color) {
    return TextStyle(fontFamily: 'rbreg', fontSize: size, color: color);
  }

  static styleMed(double size, Color color) {
    return TextStyle(fontFamily: 'rbmed', fontSize: size, color: color);
  }

  static styleMedCenter(double size, Color color) {
    return TextStyle(fontFamily: 'rbmed', fontSize: size, color: color);
  }
}
