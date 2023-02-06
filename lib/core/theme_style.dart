import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.red,
        primaryColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        backgroundColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        indicatorColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        hintColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        highlightColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        hoverColor:
            isDarkTheme ? Color.fromRGBO(0, 0, 0, 1) : AppColors.white100,
        focusColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        disabledColor: Colors.grey,
        canvasColor: isDarkTheme ? AppColors.black100 : Colors.grey[50],
        cardColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        iconTheme: IconThemeData(
          color: isDarkTheme ? AppColors.black100 : AppColors.white100,
        ),
        buttonColor: isDarkTheme ? AppColors.black100 : AppColors.white100,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          // actionsIconTheme: IconThemeData(
          //     color: isDarkTheme ? AppColors.black100 : AppColors.white100),
          iconTheme: IconThemeData(
              color: isDarkTheme ? AppColors.black100 : AppColors.white100),
          backgroundColor: Colors.red,
          titleTextStyle: TextStyle(
            fontSize: 20,
            letterSpacing: 3.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
            ),
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
            selectionColor:
                isDarkTheme ? AppColors.white100 : AppColors.black100),
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w900,
            color: isDarkTheme ? AppColors.black100 : AppColors.white100,
          ),
          headline1: TextStyle(
            fontSize: 25,
            letterSpacing: 3.0,
            fontWeight: FontWeight.w500,
            color: isDarkTheme ? AppColors.black100 : AppColors.white100,
          ),
          headline2: TextStyle(
            fontSize: 40,
            letterSpacing: 3.0,
            fontWeight: FontWeight.w900,
            color: Colors.red,
          ),
        ));
  }
}

abstract class AppColors {
  static const black100 = Color.fromARGB(255, 0, 0, 0);
  static const white100 = Color.fromARGB(255, 255, 255, 255);
}
