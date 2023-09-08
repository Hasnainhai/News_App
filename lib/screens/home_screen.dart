import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Widgets/drawer_widget.dart';
import 'package:grocery_app/provider/dark_theme_provide.dart';
import 'package:grocery_app/services/utils.dart';
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
      final Color color = Utils(context).getColor;
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar( 
        title:  Text(
                  'News App',
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(color: color,fontSize: 20.0,letterSpacing: 0.6)
                  ),
                  
                ),
                centerTitle: true,
      iconTheme: IconThemeData(color: color),
      elevation: 0.0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    actions: [
      IconButton(onPressed: (){}, icon:const Icon(Icons.search))
    ],
      ),
      body:Container(),
    );
  }
}