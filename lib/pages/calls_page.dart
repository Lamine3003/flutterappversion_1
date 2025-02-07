import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  static const String routeName = '/calls';

  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Historique des Appels")),
      body: const Center(
        child: Text(
          "Bienvenue sur la page des appels !",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
