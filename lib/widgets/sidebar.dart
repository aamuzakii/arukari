import 'package:flutter/material.dart';
import '../widgets/icon_with_link.dart';
import 'big_text.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 488,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: BigText("Quick Links", 14,
                        fontWeight: FontWeight.w700)),
                const IconWithLink(label: "My Info", icon: Icons.person),
                const IconWithLink(
                    label: "My Attendance Logs", icon: Icons.access_time_sharp),
              ],
            ),
          ),
          const ThinLine(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Applications"),
                IconWithLink(label: "Forms", icon: Icons.business_center_sharp),
                IconWithLink(
                    label: "Performance Review", icon: Icons.bar_chart_sharp),
                IconWithLink(label: "Insight", icon: Icons.lock_clock),
                IconWithLink(
                    label: "Advance Recruitment", icon: Icons.lock_clock),
                IconWithLink(label: "Marketplace", icon: Icons.apps_sharp),
              ],
            ),
          ),
          const ThinLine(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Download Talenta Mobile"),
                IconWithLink(label: "App Store", icon: Icons.apple_sharp),
                IconWithLink(label: "Google Play", icon: Icons.lock_clock),
              ],
            ),
          ),
        ],
      ),
    );
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