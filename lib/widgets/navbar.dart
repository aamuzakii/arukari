import 'package:flutter/material.dart';

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
        IconButton(
          icon: const Icon(Icons.email),
          onPressed: () {
            // Handle the action for icon1
          },
        ),
        IconButton(
          icon: const Icon(Icons.email),
          onPressed: () {
            // Handle the action for icon2
          },
        ),
        IconButton(
          icon: const Icon(Icons.email),
          onPressed: () {
            // Handle the action for icon3
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
