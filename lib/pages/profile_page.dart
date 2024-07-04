import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'profile',
              child: Icon(
                Icons.person,
                size: 100,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
