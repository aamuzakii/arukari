import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/link_text.dart';
import 'package:arukari/widgets/my_info/tabbed_widget.dart';
import 'package:arukari/widgets/my_info/sidebar.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';

class MyInfoPage extends StatelessWidget {
  MyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              LeftSidebar(),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const LinkText(
                            text: "Employees",
                            url: "https://github.com/",
                          ),
                          Container(
                              margin: const EdgeInsets.all(8),
                              child: const Text("/")),
                          const LinkText(
                            text: "Abdullah Al Muzaki",
                            url: "https://github.com/",
                          ),
                          Container(
                              margin: const EdgeInsets.all(8),
                              child: const Text("/")),
                          const LinkText(
                            text: "General",
                            url: "https://github.com/",
                          ),
                        ],
                      ),
                      // Text("Employees / Abdullah Al Muzaki / General"),
                      BigText("Personal", 30, fontWeight: FontWeight.w600),
                      Expanded(child: MyTabbedPage())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
