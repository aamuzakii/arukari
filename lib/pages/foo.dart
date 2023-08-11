import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDropdownOpen = false;

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  void closeDropdown() {
    setState(() {
      isDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Menu Example'),
      ),
      body: GestureDetector(
        onTap: () {
          closeDropdown();
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16.0),
                child: Sepaket(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
