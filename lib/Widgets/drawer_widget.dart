import 'package:flutter/material.dart';
import 'package:grocery_app/Widgets/vertical_spacing_widget.dart';
import 'package:grocery_app/provider/dark_theme_provide.dart';
import 'package:provider/provider.dart';


class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}
class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvide>(context);
    return Drawer(
      child: Material(
            color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/news.png',color: Colors.white,height: 100.0,width: 100.0,),
                // const VerticalSpeacing(20.0),
               const Text(
                  'News App'
                ),
              ],
            ),
          ),
          const VerticalSpeacing(20.0),
           listTile(title: 'Home', icon: Icons.home_outlined, onTap: (){},),
         listTile(title: 'Bookmarks', onTap: (){}, icon: Icons.receipt_outlined),
            SwitchListTile(
            activeColor: themeState.getDarkTheme ? Colors.white : Colors.black12 ,
            title: const Text('ChangeTheme',style: TextStyle(
              fontSize: 20.0,
            ),
           ),
            secondary:  Icon(themeState.getDarkTheme  ?  Icons.dark_mode_outlined : Icons.light_mode_outlined),
             onChanged: (bool value){
              setState(() {
                 themeState.setDarkTheme = value;
              });
             },
             value: themeState.getDarkTheme,
          ),
      
        ],
        ),
      ),
    );
  }
}

class listTile extends StatelessWidget {
   const listTile({
    super.key, required this.title, required this.onTap, required this.icon,
  });
  final String title;
  final Function onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: Icon(icon),
     title: Text(title,
     style: const TextStyle(fontSize: 20.0),
     
     ),
     onTap: (){
      onTap();
     },
    );
  }
}