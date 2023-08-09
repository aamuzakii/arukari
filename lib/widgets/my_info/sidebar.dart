import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/icon_with_link.dart';
import 'package:flutter/material.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SectionTitle("Abdullah Al Muzaki"),
                SectionTitle("Fullstack Developer"),
              ],
            ),
          ),
          const ThinLine(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SectionTitle("Quick Links"),
                IconWithLink(label: "General", icon: Icons.person),
                IconWithLink(
                    label: "Payroll", icon: Icons.account_balance_wallet),
                IconWithLink(label: "Finance", icon: Icons.attach_money),
                IconWithLink(label: "Files", icon: Icons.folder),
                IconWithLink(label: "Assets", icon: Icons.image),
                IconWithLink(label: "History", icon: Icons.history),
                IconWithLink(
                    label: "Time Management", icon: Icons.access_time_sharp),
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
