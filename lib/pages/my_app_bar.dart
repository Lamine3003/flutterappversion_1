import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Title(color: Colors.green, child: Text("ONLY BETTER APP")),
      backgroundColor: Colors.green,

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
