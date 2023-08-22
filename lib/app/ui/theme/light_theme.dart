
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timetable_ugrasu/app/const/color_const.dart';


ThemeData lightTheme=ThemeData(
    textTheme: TextTheme(
      displayLarge: GoogleFonts.pacifico().copyWith(
        fontSize: 35,
        fontWeight: FontWeight.w600,
        letterSpacing: 5,
        color: Colors.white60,
      ),
      displayMedium: GoogleFonts.pacifico().copyWith(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white60,
      ),
      displaySmall: GoogleFonts.pacifico().copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white60,
      ),
    ),
    useMaterial3: true,

    scaffoldBackgroundColor: ConstColor.LIGHT_BACKGROUND_COLOR
);
