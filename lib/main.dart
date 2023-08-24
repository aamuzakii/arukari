// ignore_for_file: prefer_const_constructors

import 'package:arukari/pages/dashboard_page.dart';
import 'package:arukari/pages/employee.dart';
import 'package:arukari/pages/live_attendance_page.dart';
import 'package:arukari/pages/login_page.dart';
import 'package:arukari/pages/my_info_page.dart';
import 'package:arukari/pages/time_off.dart';
import 'package:arukari/pages/timesheet.dart';
import 'package:arukari/widgets/scrollable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Aruna Talenta Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/about': (context) => const AboutPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/live-attendance': (context) => const LiveAttendancePage(),
        '/my-info/index': (context) => MyInfoPage(),
        '/my-info/time-off': (context) => TimeOff(),
        '/employee': (context) => EmployeeTable(),
        '/timesheet/time-tracker': (context) => TimeSheet(),
        '/foo': (context) => const CustomScrollViewWidget(),
      },
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the About Page.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
