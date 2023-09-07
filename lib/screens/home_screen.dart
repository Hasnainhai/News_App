import 'package:flutter/material.dart';
import 'package:grocery_app/Widgets/drawer_widget.dart';
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
      drawer: const DrawerWidget(),
      appBar: AppBar( 
      elevation: 0.0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: SwitchListTile(
          activeColor: themeState.getDarkTheme ? Colors.white : Colors.black12 ,
          title: const Text('Change Theme'),
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