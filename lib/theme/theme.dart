import 'package:flutter/material.dart';
import 'package:flutter_codes/theme/button_theme.dart';
import 'package:flutter_codes/theme/text_theme.dart';

class Gtheme {
  Gtheme._();
  //Just found out i can't comment with '#'    sad.......

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.red,
    textTheme: GtextTheme.lightTextTheme,
    elevatedButtonTheme: GelevatedButton.lightElevatedButtonTheme,
    outlinedButtonTheme: GoutlinedButton.lightOutlinedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      textTheme: GtextTheme.darkTextTheme,
      elevatedButtonTheme: GelevatedButton.darkElevatedButtonTheme,
      outlinedButtonTheme: GoutlinedButton.darkOutlinedButtonTheme);
}
