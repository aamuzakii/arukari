import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  final List<ButtonConfig> buttons;

  const ButtonList({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buttons.map((button) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
            onPressed: button.onPress,
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontWeight: FontWeight.w300),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minimumSize: const Size(double.infinity, 50),
                primary: Colors.white),
            child: Text(
              button.label,
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ButtonConfig {
  final String label;
  final VoidCallback onPress;

  ButtonConfig({required this.label, required this.onPress});
}
