import 'package:flutter/cupertino.dart';

Color hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

class CustomColors {
  // representative colors #1
  static Color representBlack = hexStringToColor("#000000");
  static Color representOrange = hexStringToColor("#ffa545");
  static Color representWhite = hexStringToColor("#ffffff");
}