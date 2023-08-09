import 'package:arukari/widgets/my_info/sidebar.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/link_text.dart';
import 'package:arukari/helper/constants.dart';

class MyInfoPage extends StatelessWidget {
  final List<ButtonConfig> buttonConfigs = [
    ButtonConfig(
      label: 'Sign in dengan Google',
      onPress: () {
        // Handle Google Sign In button press
      },
    ),
    ButtonConfig(
      label: 'Sign in dengan ID Karyawan',
      onPress: () {
        // Handle ID Karyawan Sign In button press
      },
    ),
    ButtonConfig(
      label: ' Sign in dengan nomor telepon ',
      onPress: () {
        // Handle ID Karyawan Sign In button press
      },
    ),
  ];

  MyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            width: double.infinity, // Set width to take up all available space
            height: double.infinity, // Set width to take up all available space
            child: Row(
              children: [
                LeftSidebar(),
                Container(child: Text("123")),
              ],
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
