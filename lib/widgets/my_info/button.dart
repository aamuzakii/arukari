import 'package:arukari/helper/constants.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), // Add border radius
            border: Border.all(
                color:
                    _isHovered ? Constants.darkBlueLogin : Constants.greySeven),
          ),
          child: Text(
            widget.text,
            style: TextStyle(color: Constants.greySeven),
          ),
        ),
      ),
    );
  }
}
