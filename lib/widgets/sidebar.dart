import 'dart:ffi';

import 'package:arukari/widgets/link_text.dart';
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
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: const [
                  Text("Quick Links"),
                  IconWithLink(label: "My Info", icon: Icons.person),
                  IconWithLink(
                      label: "My Attendance Logs", icon: Icons.lock_clock),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: const [
                  Text("Applications"),
                  IconWithLink(label: "Forms", icon: Icons.email),
                  IconWithLink(
                      label: "Performance Review", icon: Icons.lock_clock),
                  IconWithLink(label: "Insight", icon: Icons.lock_clock),
                  IconWithLink(
                      label: "Advance Recruitment", icon: Icons.lock_clock),
                  IconWithLink(label: "Marketplace", icon: Icons.lock_clock),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: const [
                  Text("Download Talenta Mobile"),
                  IconWithLink(label: "App Store", icon: Icons.person),
                  IconWithLink(label: "Google Play", icon: Icons.lock_clock),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RightSidebar extends StatelessWidget {
  const RightSidebar({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const HalfTop(),
                  Container(
                    height: 50,
                    color: Colors.white,
                  ),
                  const HalfTop()
                ],
              ))
        ],
      ),
    );
  }
}

class HalfTop extends StatelessWidget {
  const HalfTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BigText(
          text: "Sick Leave Used",
          fontSize: 15,
        ),
        BigText(
          text: "0 Day",
          fontSize: 24,
        ),
        LinkText(text: "Request Sick Leave →")
      ],
    );
  }
}
