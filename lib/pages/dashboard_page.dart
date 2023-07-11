import 'package:arukari/widgets/navbar.dart';
import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';

import '../widgets/big_text.dart';
import '../widgets/marseille.dart';
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
                  Column(
                    children: [
                      Container(
                        color: Colors.purple,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/banner-marketplace.png"),
                                  fit: BoxFit.fitHeight, //
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 400,
                              height: 165,
                              child: Column(children: const [
                                BigText(
                                  "Introducing Mekari Marketplace",
                                  18,
                                  color: Colors.white,
                                ),
                                BigText(
                                    "Find essential add-ons for Talenta to drive your productivity",
                                    18),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 600,
                        height: 257,
                        color: Colors.white,
                        child: const MyTabbedWidget(),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  const RightSection(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RightSection extends StatelessWidget {
  const RightSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RightSidebar(),
        SizedBox(height: 30),
        RightSidebar(),
      ],
    );
  }
}
