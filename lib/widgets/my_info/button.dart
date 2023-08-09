import 'package:flutter/material.dart';

class HoverBorderButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  HoverBorderButton({required this.text, required this.onPressed});

  @override
  _HoverBorderButtonState createState() => _HoverBorderButtonState();
}

class _HoverBorderButtonState extends State<HoverBorderButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
          decoration: BoxDecoration(
            border: Border.all(color: _isHovered ? Colors.blue : Colors.black),
          ),
          child: Text(
            widget.text,
            style: TextStyle(color: Color(0xff777777)),
          ),
        ),
      ),
    );
  }
}
