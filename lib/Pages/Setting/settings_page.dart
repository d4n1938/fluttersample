import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(
            Icons.message,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          title: Text(
            'Messages',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.border_all,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          title: Text(
            'Profile',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.border_all,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ],
    );
  }
}
