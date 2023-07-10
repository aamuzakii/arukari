import 'package:flutter/material.dart';

class IconWithLink extends StatelessWidget {
  final String label;
  final IconData icon;

  const IconWithLink({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon), Text(label)],
    );
  }
}
