import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatefulWidget {
  final String text;
  final String url;
  final Color color;

  const LinkText({
    Key? key,
    required this.text,
    this.url = 'https://nextjs.org/',
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  LinkTextState createState() => LinkTextState();
}

class LinkTextState extends State<LinkText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: () {
          launch(widget.url);
        },
        child: Text(
          widget.text,
          style: TextStyle(
            decoration:
                _isHovered ? TextDecoration.underline : TextDecoration.none,
            color: widget.color,
          ),
        ),
      ),
    );
  }
}
