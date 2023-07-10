import 'package:arukari/widgets/navbar.dart';
import 'package:flutter/material.dart';

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
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
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
