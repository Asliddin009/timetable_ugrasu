
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


ThemeData darkTheme=ThemeData.dark().copyWith(
  textTheme: TextTheme(
    displayLarge: GoogleFonts.pacifico().copyWith(
      fontSize: 35,
      color: Colors.white,
    )
  )
);