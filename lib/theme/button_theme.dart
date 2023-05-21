import 'package:flutter/material.dart';

class GoutlinedButton {
  // for light
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.green),
          padding: const EdgeInsets.symmetric(vertical: 5.0)));
  // for the dark theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          foregroundColor: Colors.grey,
          side: const BorderSide(color: Colors.green),
          padding: const EdgeInsets.symmetric(vertical: 5.0)));
}

class GelevatedButton {
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.black,
          side: const BorderSide(color: Colors.green),
          padding: const EdgeInsets.symmetric(vertical: 5.0)));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.black,
          side: const BorderSide(color: Colors.green),
          padding: const EdgeInsets.symmetric(vertical: 5.0)));
}

class Gborder {
  static final lightBoxDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(10.0), color: Colors.grey);

  static final darkBoxDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(10.0), color: Colors.grey);
}
