import 'package:arukari/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonList extends StatelessWidget {
  final List<ButtonConfig> buttons;

  const ButtonList({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buttons.map((button) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextButton(
            onPressed: button.onPress,
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontWeight: FontWeight.w300),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(color: Color(0xffe2e2e2)),
              ),
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.white,
              primary: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (button.label.contains('Google'))
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SvgPicture.asset(
                      'assets/svg/google.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                Text(
                  button.label,
                  style: const TextStyle(
                    color: Constants.darkBlueLogin,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
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
