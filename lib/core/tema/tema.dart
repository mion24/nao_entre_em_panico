import 'package:flutter/material.dart';

ThemeData tema() => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 99, 97, 97),
        onPrimary: Colors.white,
        secondary: Colors.black,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Color.fromARGB(255, 99, 97, 97),
        onBackground: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Color.fromARGB(255, 99, 97, 97),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.purple),
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
