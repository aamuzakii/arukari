import 'package:flutter/material.dart';

class IconWithLink extends StatelessWidget {
  final String label;

  const IconWithLink({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [Icon(Icons.email), Text(label)],
    );
  }
}

class LinkObject {
  final String label;
  final Icon icon;

  LinkObject({required this.label, required this.icon});
}
