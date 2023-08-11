// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Sepaket extends StatelessWidget {
  const Sepaket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        icon: Icon(
          Icons.keyboard_arrow_down, // The chevron pointing downwards icon
          size: 15, // Adjust the size as needed
          color: Colors.grey, // Grey color
        ),
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
