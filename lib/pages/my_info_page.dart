import 'package:arukari/widgets/my_info/foo.dart';
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
                  child: Column(
                    children: [
                      Text("Employees / Abdullah Al Muzaki / General"),
                      Text("Personal"),
                      Expanded(child: MyTabbedPage())
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
