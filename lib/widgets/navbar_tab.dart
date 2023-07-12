import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  final List<ButtonConfig> buttons;

  const ButtonList({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...buttons.map((button) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            child: TextButton(
              onPressed: () {
                // window.open('/login', '_blank');
                Navigator.pushNamed(context, button.url);
              },
              child: Text(button.label),
            ),
          );
        }).toList(),
        const Text('More request'), // Add the Text widget here
      ],
    );
  }
}

class ButtonConfig {
  final String label;
  final String url;

  ButtonConfig({required this.label, required this.url});
}
