import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/rendering.dart';

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
