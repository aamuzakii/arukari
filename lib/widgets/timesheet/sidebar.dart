import 'package:arukari/helper/constants.dart';
import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/icon_with_link.dart';
import 'package:flutter/material.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Constants.twoE,
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SectionTitle("Timesheet"),
                IconWithLink(label: "Time Tracker", icon: Icons.access_time),
                IconWithLink(label: "Activities", icon: Icons.event),
                IconWithLink(label: "Summary", icon: Icons.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: BigText(text, 14, fontWeight: FontWeight.w700));
  }
}

class ThinLine extends StatelessWidget {
  const ThinLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3,
      color: const Color(0xff777777),
    );
  }
}
// align_vertical_bottom_sharp, all_inbox_sharp, analytics_sharp
