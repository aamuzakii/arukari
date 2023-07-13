import 'package:arukari/widgets/navbar.dart';
import 'package:arukari/widgets/sidebar.dart';
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
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffe2e2e2),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
                    child: Column(children: [
                      Text("11:35 AM"),
                      Text("Thu, 13 Jul 2023"),
                      ThinLine(),
                      Text("Schedule, 13 Jul 2023"),
                      Text("N"),
                      Text("09:00 AM - 06:00 PM"),
                      Text("Notes"),
                      Row(
                        children: [
                          ClockInOutButton(),
                          const SizedBox(width: 24),
                          ClockInOutButton(),
                        ],
                      ),
                    ]),
                  ),
                ),
                const Text(
                  'Attendance log',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClockInOutButton extends StatelessWidget {
  const ClockInOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text('Clock In'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 19.0),
        elevation: 0, // Set elevation to 0 to remove shadow
        primary: const Color(0xff005fbf), // Set background color to red
        textStyle: const TextStyle(
          fontWeight: FontWeight.w300, // Set text weight to thin
        ),
      ),
    );
  }
}
