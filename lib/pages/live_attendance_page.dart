import 'package:arukari/widgets/navbar.dart';
import 'package:flutter/material.dart';

class LiveAttendancePage extends StatelessWidget {
  const LiveAttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Live Attendance',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Live Attendance',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  'Attendance log',
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
