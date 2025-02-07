import 'package:flutter/material.dart';
import 'package:flutters_bis/pages/my_app_bar.dart';
import 'package:flutters_bis/pages/my_app_drawer.dart';

import '../pages/my_navigation_bar.dart';

class Home extends StatelessWidget {
  static const String routeHome = '/home';
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyAppDrawer(),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
