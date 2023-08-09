import 'package:arukari/widgets/sidebar.dart';
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
        child: Text("123"),
      ),
    );
  }
}
