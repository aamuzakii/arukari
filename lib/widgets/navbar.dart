import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        SvgPicture.asset(
          'assets/images/example.svg', // Replace with your SVG file path or asset path
          width: 200, // Specify the desired width
          height: 200, // Specify the desired height
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
