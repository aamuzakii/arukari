import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';
import 'link_text.dart';

class RightSidebar extends StatelessWidget {
  const RightSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270, // ini PENYAKIT, KELEBARAN,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HalfTop(),
                  Container(
                    height: 32,
                    color: Colors.white,
                  ),
                  const HalfTop()
                ],
              )),
          const ThinLine(),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
