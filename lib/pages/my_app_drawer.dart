import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ex.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Acceuil"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profils"),
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PagesProfils()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text("Comptes"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Helpe"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Deconnexion"),
          ),
      ],
    ),
    );
  }
}
