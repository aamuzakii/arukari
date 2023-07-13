import 'package:arukari/widgets/lucy.dart';
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
            child: WhiteRoundedButton(
              label: button.label,
              onPress: button.onPress,
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
  final VoidCallback onPress;

  ButtonConfig({required this.label, required this.onPress});
}
