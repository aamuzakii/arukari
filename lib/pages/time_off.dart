import 'package:arukari/helper/constants.dart';
import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/common/navbar.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> containerData = [
  {'label': 'GENERAL INFO'},
  {'label': 'MAMA'},
  {'label': 'TIME MANAGEMENT ', 'color': Colors.white},
  {'label': 'FINANCE'},
  {'label': 'HISTORY'},
  {'label': 'MORE'},
];

class TimeOff extends StatelessWidget {
  const TimeOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(),
          (Container(
            color: Colors.red[200],
            padding: const EdgeInsets.all(24.0),
            child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: containerData.map((data) {
                          return Container(
                            padding: const EdgeInsets.all(24.0),
                            color: data['color'] ??
                                Constants.twoE, // Default color if not provided
                            child: Text(data['label']),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText("Your time off information", 35),
                          Text("This is a summary of your time off balance",
                              style: TextStyle(fontStyle: FontStyle.italic)),
                          Row(
                            children: [
                              WhiteRoundedButton(
                                  label: "REQUEST DELEGATION", onPress: () {}),
                              WhiteRoundedButton(
                                  label: "REQUEST TIME OFF", onPress: () {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("ANNUAL LEAVE "),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText("5 ", 50),
                            Text("days "),
                          ],
                        ),
                        Text("."),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ThreeMiddleText("TIME OFF REQUEST"),
                          ThreeMiddleText("DELEGATION", isMiddle: true),
                          ThreeMiddleText("TIME OFF TAKEN")
                        ],
                      ),
                    ),
                    Text("control"),
                    Text("table"),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}

class ThreeMiddleText extends StatelessWidget {
  final String label;
  final bool isMiddle;

  const ThreeMiddleText(
    this.label, {
    this.isMiddle = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isMiddle
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Constants.twoE, // Set your desired border color here
                    width: 4, // Set the border width
                  ),
                ),
              ),
              child: BigText(
                label,
                15,
                fontWeight: FontWeight.w800,
                color: Constants.redMekariHex,
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: BigText(
                label,
                15,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 129, 129, 129),
              )),
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
