import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'settings',
              child: Icon(
                Icons.settings,
                size: 100,
                color: Colors.grey,
              ),
            ),
          ],

          // child: Text(
          //   'Welcome to Settings Page',
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //     background: Paint()..color = Colors.blue,
          //   ),

          // ),
        ),
      ),
    );
  }
}
