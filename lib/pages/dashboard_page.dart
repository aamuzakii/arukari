import 'package:arukari/widgets/navbar.dart';
import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/big_text.dart';
import '../widgets/zerg.dart';
import '../widgets/marseille.dart';
import '../widgets/right_sidebar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: Container(
        color: Colors.grey[200], // Adjust the shade of grey as needed
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              LucyWidget(),
              const SizedBox(height: 30),
              FractionallySizedBox(
                widthFactor: 0.67,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    LeftSidebar(),
                    SizedBox(width: 30),
                    MiddleSection(),
                    SizedBox(width: 30),
                    RightSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LucyWidget extends StatelessWidget {
  final List<ButtonConfig> buttonConfigs = [
    ButtonConfig(
      label: 'Live attendance',
      onPress: () {
        // Handle Google Sign In button press
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
  LucyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: Container(
        height: 208,
        color: Colors.white,
        child: Row(children: [
          Container(
            padding: const EdgeInsets.all(24.0),
            child: Column(children: [
              BigText("Good afternoon, Abdullah Al Muzaki!", 25),
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

  const WhiteRoundedButton({
    Key? key,
    required this.label,
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
      child: GestureDetector(
        onTap: () {
          // Handle button tap
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
            // padding: EdgeInsets.all(5.0),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Text(
              widget.label,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: 600,
      child: Column(
        children: [
          Container(
            color: const Color(0xff4b61dd),
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner-marketplace.png"),
                      fit: BoxFit.fitHeight, //
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(children: const [
                    BigText(
                      "Introducing Mekari Marketplace",
                      12,
                      color: Colors.white,
                      maxWidth: 300,
                    ),
                    BigText(
                      "Find essential add-ons for Talenta to drive your productivity",
                      16,
                      color: Colors.white,
                      maxWidth: 300,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 600,
            height: 257,
            color: Colors.white,
            child: const MyTabbedWidget(),
          ),
        ],
      ),
    );
  }
}

class RightSection extends StatelessWidget {
  const RightSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RightSidebar(),
        SizedBox(height: 30),
        RightSidebar(),
      ],
    );
  }
}
