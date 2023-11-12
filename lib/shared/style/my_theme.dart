import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xFF39A552);
  static Color onPrimaryColor = Color(0xFFDFECDB);
  static Color greyColor = Color(0xFF79828B);
  static Color blackColor = Color(0xFF42505C);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: onPrimaryColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      iconSize: 50,
      shape: StadiumBorder(side: BorderSide(width: 4, color: Colors.white)),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 10,
        color: greyColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: blackColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 13,
        color: greyColor,
      ),
    ),
  );
}
