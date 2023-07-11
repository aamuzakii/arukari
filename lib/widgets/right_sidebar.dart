import 'package:flutter/material.dart';

import 'big_text.dart';
import 'link_text.dart';

class RightSidebar extends StatelessWidget {
  const RightSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
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
              )),
          Container(
            height: 1,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(horizontal: 20),
          ),
          Container(
              margin: const EdgeInsets.all(20),
              child: const LinkText(text: "View All")),
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
          "Sick Leave Used",
          15,
        ),
        BigText(
          "0 Day",
          24,
        ),
        LinkText(text: "Request Sick Leave →")
      ],
    );
  }
}
