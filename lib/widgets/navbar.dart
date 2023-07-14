import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'navbar_tab.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  Navbar({
    Key? key,
  }) : super(key: key);

  final List<ButtonConfig> buttonConfigs = [
    ButtonConfig(label: 'Dashboard', url: '/dashboard'),
    ButtonConfig(label: 'My Info', url: '/my-info/index'),
    ButtonConfig(label: ' Employees', url: '//employee/address-book?id=A'),
    ButtonConfig(label: ' Timesheet', url: '/timesheet/time-tracker'),
    ButtonConfig(label: ' Calendar', url: '/employee/company-calendar'),
    ButtonConfig(label: ' Company', url: '/company/index'),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            'assets/aruna-logo.png',
            // height: 150,
            width: 80,
          ),
        ),
        ButtonList(buttons: buttonConfigs),
        const Expanded(child: SizedBox(width: 16)),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: InkWell(
            onTap: () {
              // Handle button tap
            },
            onHover: (value) {
              // Handle hover state changes
            },
            child: Container(
              width: 24,
              decoration: BoxDecoration(
                // color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SvgPicture.asset(
                'assets/svg/colorful.svg',
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
        IconButton(
            icon: const Icon(Icons.email),
            onPressed: () {
              // Handle the action for icon1
            },
            color: Colors.grey),
        IconButton(
            icon: const Icon(Icons.email),
            onPressed: () {
              // Handle the action for icon1
            },
            color: Colors.grey),
        IconButton(
            icon: const Icon(Icons.email),
            onPressed: () {
              // Handle the action for icon1
            },
            color: Colors.grey),
      ],
    );
  }

  @override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
