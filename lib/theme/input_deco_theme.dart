import 'package:flutter/material.dart';

class GtextFormField {
  static InputDecorationTheme ligthInputDecoTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: Colors.green,
      floatingLabelStyle: TextStyle(color: Colors.green),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Colors.green)));
}
