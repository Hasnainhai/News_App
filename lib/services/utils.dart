import 'package:flutter/material.dart';
import 'package:grocery_app/provider/dark_theme_provide.dart';
import 'package:provider/provider.dart';

class Utils{
  BuildContext context;
  Utils(this.context);

  bool get getTheme => Provider.of<DarkThemeProvide>(context).getDarkTheme;

  Color get getColor=> getTheme ? Colors.white : Colors.black;

}