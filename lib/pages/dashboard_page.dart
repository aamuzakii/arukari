import 'package:arukari/widgets/navbar.dart';
import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';

import '../widgets/right_sidebar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: Container(
        color: Colors.grey[200], // Adjust the shade of grey as needed
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  height: 208,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LeftSidebar(),
                  const SizedBox(width: 30),
                  Container(
                    width: 600,
                    height: 488,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 30),
                  Column(
                    children: const [
                      RightSidebar(),
                      SizedBox(height: 30),
                      RightSidebar(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
