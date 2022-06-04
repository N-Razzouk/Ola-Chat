import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      fontFamily: GoogleFonts.raleway().fontFamily,
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: Colors.blue,
      backgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    AppTheme.darkTheme: ThemeData(
      fontFamily: GoogleFonts.raleway().fontFamily,
      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.red,
      backgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
    )
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}
