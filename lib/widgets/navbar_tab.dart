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
                Navigator.pushNamed(context, button.url);
              },
              style: TextButton.styleFrom(
                primary: const Color(0xff212121),
              ),
              child: Text(
                button.label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400, // Sets the text to thin
                ),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}

class ButtonConfig {
  final String label;
  final String url;

  ButtonConfig({required this.label, required this.url});
}
