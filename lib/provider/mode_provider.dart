
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// class ProviderAPP with ChangeNotifier{
// ThemeMode themeMode =ThemeMode.system;

// ChangeMode(bool dark)async{
//   final SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
//    themeMode =dark?ThemeMode.dark : ThemeMode.light;
//    sharedPreferences.setBool('dark', themeMode == ThemeMode.dark);
//   notifyListeners();

// }

// getValueptovider()async{
//    final SharedPreferences sharedPreferences= 
//    await SharedPreferences.getInstance();
//    bool isDark = sharedPreferences.getBool('dark')??false;
//    themeMode =isDark ? ThemeMode.dark: ThemeMode.light;
//    maainColor =sharedPreferences.getInt('color')?? 0xff405085;
//    notifyListeners();


// }
// }