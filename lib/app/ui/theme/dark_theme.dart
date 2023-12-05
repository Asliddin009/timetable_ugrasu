import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  textTheme: TextTheme(
    displayLarge: GoogleFonts.montserrat().copyWith(
      fontSize: 30,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.montserrat().copyWith(
      fontSize: 20,
      letterSpacing: 5,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.montserrat().copyWith(
      fontSize: 14,
      letterSpacing: 5,
      color: Colors.white,
    ),
  ),
  useMaterial3: true,
  primaryColor: Colors.indigo,
  scaffoldBackgroundColor: ConstColor.DARK_BACKGROUND_COLOR,
  appBarTheme: AppBarTheme(backgroundColor: ConstColor.DARK_BACKGROUND_COLOR),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white12,
      selectedItemColor: Colors.white),
);
