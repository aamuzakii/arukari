import 'package:arukari/widgets/link_text.dart';
import 'package:flutter/material.dart';

class IconWithLink extends StatelessWidget {
  final String label;
  final String url;
  final IconData icon;

  const IconWithLink({
    Key? key,
    required this.label,
    required this.icon,
    this.url = 'https://nextjs.org/', //  default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        LinkText(
          text: label,
          url: url,
          color: const Color(0xff777777),
        ),
      ],
    );
  }
}
