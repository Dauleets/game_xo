import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: isDarkTheme ? Colors.black : AppColors.white100,
        backgroundColor: isDarkTheme ? AppColors.black50 : AppColors.white50,
        indicatorColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        buttonColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        hintColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        highlightColor: isDarkTheme ? AppColors.black50 : AppColors.white50,
        hoverColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        focusColor: isDarkTheme ? AppColors.black50 : AppColors.white50,
        disabledColor: Colors.grey,
        canvasColor: isDarkTheme ? AppColors.black100 : Colors.grey[50],
        cardColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        iconTheme: IconThemeData(
          color: isDarkTheme ? AppColors.black100 : AppColors.white100,
        ),
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light()),
        appBarTheme: AppBarTheme(
            elevation: 0.0,
            backgroundColor: Colors.cyan,
            titleTextStyle: TextStyle(
              fontSize: 20,
              letterSpacing: 3.0,
              fontWeight: FontWeight.w500,
            )),
        textSelectionTheme: TextSelectionThemeData(
            selectionColor:
                isDarkTheme ? AppColors.white50 : AppColors.black50),
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w900,
          ),
          button: TextStyle(
            fontSize: 23,
            letterSpacing: 3.0,
            fontWeight: FontWeight.w500,
          ),
          headline1: TextStyle(
            fontSize: 25,
            letterSpacing: 3.0,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}

abstract class AppColors {
  static const black50 = Color.fromARGB(255, 0, 55, 62);
  static const black100 = Color.fromARGB(255, 0, 0, 0);
  static const white50 = Color.fromARGB(255, 84, 198, 213);
  static const white100 = Color.fromARGB(255, 255, 255, 255);
}
