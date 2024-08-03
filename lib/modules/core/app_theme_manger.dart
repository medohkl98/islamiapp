import 'package:flutter/material.dart';

class App_Theme_Manger {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          //toolbarTextStyle: Colors.black,
          titleTextStyle: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffB7935F),
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Color(0xffF8F8F8),
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 35, color: Color(0xff242424)),
        unselectedIconTheme: IconThemeData(
          size: 35,
          color: Color(0xffF8F8F8),
        ),
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            //color:  Colors.black,
          ),
          bodyLarge: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 20,
              fontWeight: FontWeight.w400),
          displaySmall: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 16,
            fontWeight: FontWeight.w400,
          )));
}