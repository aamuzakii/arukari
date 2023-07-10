import 'package:arukari/widgets/link_text.dart';
import 'package:flutter/material.dart';

class IconWithLink extends StatelessWidget {
  final String label;
  final String url;
  final IconData icon;

  const IconWithLink(
      {Key? key, required this.label, required this.icon, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon), LinkText(text: label, url: url)],
    );
  }
}
