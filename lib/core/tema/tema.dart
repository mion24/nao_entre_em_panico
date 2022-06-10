import 'package:flutter/material.dart';

ThemeData tema() => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.blue,
        onPrimary: Colors.white,
        secondary: Colors.black,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.blue,
        onBackground: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue.shade400,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
          textStyle: MaterialStateTextStyle.resolveWith(
            (states) => TextStyle(fontSize: 18),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        headline1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
