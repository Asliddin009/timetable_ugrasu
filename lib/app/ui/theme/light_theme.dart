
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';


ThemeData lightTheme=ThemeData(
    textTheme: TextTheme(
      displayLarge: GoogleFonts.pacifico().copyWith(
        fontSize: 35,
        fontWeight: FontWeight.w600,
        letterSpacing: 5,
        color: Colors.black12,
      ),
      displayMedium: GoogleFonts.pacifico().copyWith(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black12,
      ),
      displaySmall: GoogleFonts.pacifico().copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black12,
      ),
    ),
    useMaterial3: true,
    primaryColor: CupertinoColors.systemGreen,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
    scaffoldBackgroundColor: ConstColor.LIGHT_BACKGROUND_COLOR,
  appBarTheme: AppBarTheme(
      backgroundColor: ConstColor.LIGHT_APP_BAR_COLOR),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: ConstColor.LIGHT_APP_BAR_COLOR,
      unselectedItemColor: Colors.black12,
      selectedItemColor: Colors.black54),
);
