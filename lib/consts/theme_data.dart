import 'package:flutter/material.dart';

class Styles{
  static ThemeData themeData(bool isDarkTheme, BuildContext context){
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? const Color(0xff00001a) : Colors.white,
      primarySwatch: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
        secondary: isDarkTheme ? const Color(0xff00001a) : Colors.white,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      ),
      canvasColor: isDarkTheme ? const Color(0xff00001a): Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkTheme? const ColorScheme.dark() : const ColorScheme.light(),
      ),
    );
  }
}