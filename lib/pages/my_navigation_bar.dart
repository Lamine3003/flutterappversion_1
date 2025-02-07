import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.chat, color: Colors.white),
          label: "Discussion",
        ),
        NavigationDestination(
          icon: Icon(Icons.call, color: Colors.white),
          label: "Appels",
        ),
        NavigationDestination(
          icon: Icon(Icons.group, color: Colors.white),
          label: "Communautés",
        ),
        NavigationDestination(
          icon: Icon(Icons.update, color: Colors.white),
          label: "Actus",
        ),
        NavigationDestination(
          icon: Icon(Icons.settings, color: Colors.white),
          label: "Paramètres",
        ),
        NavigationDestination(
          icon: Icon(Icons.video_call, color: Colors.white),
          label: "Video",
        ),
      ],
      backgroundColor: Colors.grey,
    );
  }
}
