import 'package:flutter/material.dart';
import 'package:grocery_app/provider/dark_theme_provide.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
      final themeState = Provider.of<DarkThemeProvide>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          activeColor: themeState.getDarkTheme ? Colors.white : Colors.black12 ,
          title: const Text('Chage Theme'),
          secondary:  Icon(themeState.getDarkTheme  ?  Icons.dark_mode_outlined : Icons.light_mode_outlined),
           onChanged: (bool value){
            setState(() {
               themeState.setDarkTheme = value;
            });
           },
           value: themeState.getDarkTheme,
        ),
        
      ),
    );
  }
}