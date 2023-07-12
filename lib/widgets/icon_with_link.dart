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
    this.url = 'https://nextjs.org/', // default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget iconWidget = icon is IconData
        ? Icon(
            icon,
            color: const Color(0xff777777),
          )
        : _buildImageIcon();

    return Row(
      children: [
        iconWidget,
        LinkText(
          text: label,
          url: url,
          color: const Color(0xff777777),
        ),
      ],
    );
  }

  Widget _buildImageIcon() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(icon),
        ),
      ),
    );
  }
}
