import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_application/SharedFiles/Styles/app-color.dart';

class MyThemeData {

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightColor,
      scaffoldBackgroundColor: lightGreenColor,
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight:FontWeight.bold ,
              color: Colors.white,
          ),


          bodyMedium: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: lightColor),
          bodySmall: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.black),
         ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.grey.shade400,
          selectedItemColor: lightColor,
         ),
      appBarTheme: AppBarTheme(
        backgroundColor: lightColor,

  ),
  bottomAppBarColor: Colors.white);
 }
