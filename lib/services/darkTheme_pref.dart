import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePref{
   static const THEME_PREF  = 'THEMEPREF';
  setDarkTheme(bool value)async {
    SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setBool(THEME_PREF, value);
  }
  Future<bool> getTheme()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(THEME_PREF) ?? false;
  }
   
}