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
          switch (value) {
            case 'account_settings':
              // do something
              break;
            case 'help':
              // do something else
              break;
            case 'sign_out':
              // do something else
              break;
            default:
            // something if anything not match
          }
        },
        items: [
          DropdownMenuItem<String>(
            value: 'account_settings',
            child: Text('Account Settings'),
          ),
          DropdownMenuItem<String>(
            value: 'help',
            child: Text('Help'),
          ),
          DropdownMenuItem<String>(
            value: 'sign_out',
            child: Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
