import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final dynamic maxWidth;
  final FontWeight fontWeight;

  const BigText(
    this.text,
    this.fontSize, {
    Key? key,
    this.color = Colors.black,
    this.maxWidth,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth != null ? maxWidth.toDouble() : null,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
