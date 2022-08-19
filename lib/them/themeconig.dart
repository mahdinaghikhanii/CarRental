import 'package:flutter/material.dart';

class MyThemeConfing extends ChangeNotifier {
  final styletitleColorForDetail = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white);
  final Color primaryColor;
  final Color primaryTextTitle;
  final Color primaryTextColor;
  final Color primaryAppBarColor;
  final Color scafoldColor;
  final Color primaryBoldTextColor;
  final Color btnColorExit;
  final Brightness brightness;
  final Color primaryBoxColor;
  final Color shadoColor;

  MyThemeConfing.light()
      : primaryColor = Colors.black,
        primaryAppBarColor = const Color(0xFFF9F9F9),
        primaryBoldTextColor = Colors.grey.shade800,
        primaryTextColor = Colors.grey.shade800,
        brightness = Brightness.light,
        scafoldColor = const Color(0xFFF9F9F9),
        primaryTextTitle = Colors.black,
        btnColorExit = Colors.red.shade50,
        primaryBoxColor = const Color(0xFFFFFFFF),
        shadoColor = Colors.blue.shade100;

  MyThemeConfing.dark()
      : primaryColor = Colors.white,
        primaryBoldTextColor = Colors.white,
        primaryTextColor = Colors.grey.shade900,
        brightness = Brightness.dark,
        primaryAppBarColor = Colors.black,
        scafoldColor = const Color.fromARGB(255, 15, 15, 15),
        primaryTextTitle = Colors.white,
        btnColorExit = Colors.red.shade50,
        primaryBoxColor = Colors.black,
        shadoColor = Colors.white;

  ThemeData getTheme() {
    return ThemeData(
        shadowColor: shadoColor,
        dialogBackgroundColor: primaryBoxColor,
        appBarTheme: AppBarTheme(color: primaryAppBarColor),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scafoldColor,
        iconTheme: IconThemeData(color: btnColorExit),
        primaryTextTheme: TextTheme(
          subtitle1: TextStyle(
              color: primaryTextTitle,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          subtitle2: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: primaryColor),
          bodyText1: TextStyle(color: primaryColor),
          bodyText2: TextStyle(color: primaryBoldTextColor),
        ));
  }
}
