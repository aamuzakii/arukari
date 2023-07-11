import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final dynamic maxWidth;

  const BigText(
    this.text,
    this.fontSize, {
    Key? key,
    this.color = Colors.black,
    this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth != null ? maxWidth.toDouble() : null,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
