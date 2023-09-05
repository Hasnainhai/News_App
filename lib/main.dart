import 'package:flutter/material.dart';
import 'package:grocery_app/consts/theme_data.dart';
import 'package:grocery_app/provider/dark_theme_provide.dart';
import 'package:grocery_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {


  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvide ChageThemeProvide = DarkThemeProvide();

   void getCurreneAppTheme()async{
     ChageThemeProvide.setDarkTheme = await ChageThemeProvide.darkThemePref.getTheme();
   }
   @override
  void initState() {
    getCurreneAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _isDark = true;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return ChageThemeProvide;
         },
        ),
      ],
      child: Consumer<DarkThemeProvide>(
        builder: (context,themeProvider,child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(themeProvider.getDarkTheme, context),
            home: const HomeScreen()
          );
        }
      ),
    );
  }
}

