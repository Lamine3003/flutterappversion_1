import 'package:flutter/material.dart';
import 'package:flutters_bis/pages/calls_page.dart';
import 'package:flutters_bis/pages/settings_page.dart';
import 'package:flutters_bis/routes/navigation_route.dart';
import 'package:flutters_bis/views/home.dart';
import 'package:flutters_bis/views/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        NavigationRoute.home : (context) => Home(),
        NavigationRoute.settings: (context) => SettingsPage(),
        NavigationRoute.calls: (context)=> CallsPage()
      },
      );
  }
}
