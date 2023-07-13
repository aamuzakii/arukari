import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/button_list.dart';
import 'package:flutter/material.dart';

class LucyWidget extends StatelessWidget {
  const LucyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ButtonConfig> buttonConfigs = [
      ButtonConfig(
        label: 'Live attendance',
        onPress: () {
          Navigator.pushNamed(context, '/live-attendance');
        },
      ),
      ButtonConfig(
        label: 'Request reimbursement',
        onPress: () {
          // Handle ID Karyawan Sign In button press
        },
      ),
      ButtonConfig(
        label: ' Request time off',
        onPress: () {
          // Handle ID Karyawan Sign In button press
        },
      ),
    ];

    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Container(
        height: 208,
        color: Colors.white,
        child: Row(children: [
          Container(
            padding: const EdgeInsets.all(24.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const BigText(
                "Good afternoon, Abdullah Al Muzaki!",
                25,
              ),
              Text("It's Tuesday, 11 July"),
              Container(
                height: 32,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: const Text("Shortcut"),
              ),
              ButtonList(buttons: buttonConfigs),
            ]),
          ),
          const Expanded(child: SizedBox(width: 16)),
          Container(
            width: 210,
            height: 210,
            margin: const EdgeInsets.symmetric(horizontal: 34.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/people-checking.png"),
                fit: BoxFit.fitHeight, //
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class WhiteRoundedButton extends StatefulWidget {
  final String label;
  final VoidCallback onPress;

  const WhiteRoundedButton({
    Key? key,
    required this.label,
    required this.onPress,
  }) : super(key: key);

  @override
  _WhiteRoundedButtonState createState() => _WhiteRoundedButtonState();
}

class _WhiteRoundedButtonState extends State<WhiteRoundedButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: _isHovered ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: InkWell(
        onTap: () {
          widget.onPress();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: _isHovered ? Colors.blue : const Color(0xffe2e2e2),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Text(
              widget.label,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
