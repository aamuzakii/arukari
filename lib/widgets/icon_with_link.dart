import 'package:flutter/material.dart';

class IconWithLink extends StatelessWidget {
  const IconWithLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [Icon(Icons.email), Text("My Info")],
    );
  }
}

class LinkObject {
  final String label;
  final Icon icon;

  LinkObject({required this.label, required this.icon});
}
