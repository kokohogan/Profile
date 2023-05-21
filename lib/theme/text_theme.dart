import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GtextTheme {
  static TextTheme lightTextTheme = TextTheme(
      titleLarge: GoogleFonts.montserrat(
          color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 30.0),
      titleMedium: GoogleFonts.montserrat(
          color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 15.0),
      bodySmall: GoogleFonts.poppins(
          color: Colors.black54, fontSize: 15.0, fontWeight: FontWeight.bold));
  static TextTheme darkTextTheme = TextTheme(
      titleLarge: GoogleFonts.montserrat(
          color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 30.0),
      titleMedium: GoogleFonts.montserrat(
          color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 15.0),
      bodySmall: GoogleFonts.poppins(
          color: Colors.white60, fontSize: 15.0, fontWeight: FontWeight.bold));
}
