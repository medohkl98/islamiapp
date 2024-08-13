import 'package:flutter/material.dart';

mixin App_Theme_Manger {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color primaryDarkColor = Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
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
        backgroundColor: primaryColor,
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
        )),
    dividerTheme: const DividerThemeData(color: primaryColor, space: 10),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      //toolbarTextStyle: Colors.black,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff141A2E),
      selectedItemColor: primaryDarkColor,
      unselectedItemColor: Color(0xffF8F8F8),
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 35, color: primaryDarkColor),
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
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400),
        displaySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        )),
    dividerTheme: const DividerThemeData(color: primaryDarkColor, space: 10),
  );
}
