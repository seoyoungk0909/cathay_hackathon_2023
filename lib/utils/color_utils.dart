import 'package:flutter/cupertino.dart';

Color hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

class CustomColors {
  static Color representBlack = hexStringToColor("#000000");
  static Color representPurple = hexStringToColor("#702B91");
  static Color lightPurple = hexStringToColor("#E0C9EB");
  static Color representMint = hexStringToColor("#59C9E0");
  static Color representWhite = hexStringToColor("#ffffff");
}