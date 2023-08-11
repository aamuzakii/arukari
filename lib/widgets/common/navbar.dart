import 'package:arukari/widgets/common/dropdown_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../navbar_tab.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  Navbar({
    Key? key,
  }) : super(key: key);

  final List<ButtonConfig> buttonConfigs = [
    ButtonConfig(label: 'Dashboard', url: '/dashboard'),
    ButtonConfig(label: 'My Info', url: '/my-info'),
    ButtonConfig(label: ' Employees', url: '/employee'),
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
        Sepaket(),
        Container(
          width: 25, // Adjust the width and height as needed
          height: 25,
          decoration: const BoxDecoration(
            color: Colors.grey, // Grey color for the circle
            shape: BoxShape.circle, // Circular shape
          ),
          child: const Center(
            child: Text(
              'AM',
              style: TextStyle(
                color: Colors.white, // White color for the text
                fontSize: 10, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        IconButton(
            padding: const EdgeInsets.only(left: 20.0),
            icon: const Icon(Icons.email),
            onPressed: () {
              // Handle the action for icon1
            },
            color: Colors.grey),
        const Colorful(),
        Container(
          width: 40,
        )
      ],
    );
  }

  @override
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class Colorful extends StatelessWidget {
  const Colorful({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MouseRegion(
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
    );
  }
}
