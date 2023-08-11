import 'package:flutter/material.dart';

class Sepaket extends StatelessWidget {
  const Sepaket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        icon: Icon(Icons.menu),
        onChanged: (value) {
          if (value == 'login') {
            // Handle login option
          } else if (value == 'about') {
            // Handle about option
          }
        },
        items: [
          DropdownMenuItem<String>(
            value: 'login',
            child: Text('Login'),
          ),
          DropdownMenuItem<String>(
            value: 'about',
            child: Text('About'),
          ),
        ],
      ),
    );
  }
}
