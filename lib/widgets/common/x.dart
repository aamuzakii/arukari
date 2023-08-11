import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Grey Circle with Text Example')),
        body: Center(
          child: Container(
            width: 100, // Adjust the width and height as needed
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey, // Grey color for the circle
              shape: BoxShape.circle, // Circular shape
            ),
            child: Center(
              child: Text(
                'AM',
                style: TextStyle(
                  color: Colors.white, // White color for the text
                  fontSize: 20, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
