import 'package:arukari/widgets/link_text.dart';
import 'package:flutter/material.dart';

class IconWithLink extends StatelessWidget {
  final String label;
  final String url;
  final dynamic icon;

  const IconWithLink({
    Key? key,
    required this.label,
    required this.icon,
    this.url = 'https://nextjs.org/', //  default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (icon is IconData) {
      // If 'icon' is of type IconData, render the Icon
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
    } else if (icon is String) {
      // If 'icon' is of type String, render the Container with an image
      return Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(icon),
              ),
            ),
          ),
          LinkText(
            text: label,
            url: url,
            color: const Color(0xff777777),
          ),
        ],
      );
    } else {
      // Handle any other types for 'icon'
      return Container(); // Return an empty container or any other desired widget
    }
  }
}
