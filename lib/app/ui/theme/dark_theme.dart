import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  textTheme: TextTheme(
    displayLarge: GoogleFonts.pacifico().copyWith(
      fontSize: 35,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.pacifico().copyWith(
      fontSize: 25,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.pacifico().copyWith(
      fontSize: 20,
      letterSpacing: 5,
      color: Colors.white,
    ),
  ),
  useMaterial3: true,
  scaffoldBackgroundColor: ConstColor.DARK_BACKGROUND_COLOR,
  appBarTheme: AppBarTheme(backgroundColor: ConstColor.DARK_APP_BAR_COLOR),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white12,
      selectedItemColor: Colors.white),
);
