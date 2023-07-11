import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const BigText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 8), // Add vertical margin of 8 pixels
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: fontSize, color: color),
      ),
    );
  }
}
