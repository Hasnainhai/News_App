import 'package:flutter/material.dart';
import 'package:grocery_app/services/darkTheme_pref.dart';

class DarkThemeProvide with ChangeNotifier{
DarkThemePref darkThemePref = DarkThemePref();
  bool _darkTheme = true;
  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value){
    _darkTheme = value;
   darkThemePref.setDarkTheme(value);
   notifyListeners();

  }
}