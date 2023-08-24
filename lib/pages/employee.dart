// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arukari/helper/constants.dart';
import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/common/navbar.dart';
import 'package:arukari/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EmployeeTable extends StatelessWidget {
  const EmployeeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: Container(
        color: Colors.grey[200], // Adjust the shade of grey as needed
        child: Foo(),
      ),
    );
  }
}

class Employee {
  final String name;
  final String id;
  final String organization;
  final String position;
  final String email;

  Employee({
    required this.name,
    required this.id,
    required this.organization,
    required this.position,
    required this.email,
  });
}

class Foo extends StatefulWidget {
  const Foo({Key? key}) : super(key: key);

  @override
  _FooState createState() => _FooState();
}

class _FooState extends State<Foo> {
  Future<List<Employee>>? futureEmployees;

  @override
  void initState() {
    super.initState();
    futureEmployees = fetchData();
  }

  Future<List<Employee>> fetchData() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/api/employees'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((data) {
        return Employee(
          name: data['name'],
          id: data['id'],
          organization: data['organization'],
          position: data['position'],
          email: data['email'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          color: Constants.f1f5f9,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: BigText("Employees", 24, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          color: Colors.white,
          width: double.maxFinite,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.5),
                        border: Border.all(
                          color: Constants.greySeven,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          IconWithLinkPurple(
                              label: 'Directory',
                              icon: 'assets/svg/column.svg'),
                          IconWithLinkPurple(
                              label: 'Org chart', icon: 'assets/svg/org.svg'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SvgPicture.asset(
                        'assets/svg/column.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SvgPicture.asset(
                        'assets/svg/insight.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Expanded(child: SearchBar())
                  ],
                ),
              ),
              FutureBuilder<List<Employee>>(
                future: futureEmployees,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(); // Show loading indicator
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 24.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Color.fromARGB(255, 161, 161, 161),
                          width: 1.0,
                        ),
                      ),
                      child: DataTable(
                        dataRowColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        headingRowColor: MaterialStateColor.resolveWith(
                            (states) => Constants.f1f5f9),
                        columns: [
                          DataColumn(label: Text('Employee Name')),
                          DataColumn(label: Text('Employee ID')),
                          DataColumn(label: Text('Organization')),
                          DataColumn(label: Text('Job Position')),
                          DataColumn(label: Text('Email')),
                        ],
                        rows: snapshot.data!.map((employee) {
                          return DataRow(cells: [
                            DataCell(Text(employee.name)),
                            DataCell(Text(employee.id)),
                            DataCell(Text(employee.organization)),
                            DataCell(Text(employee.position)),
                            DataCell(Text(employee.email)),
                          ]);
                        }).toList(),
                      ),
                    );
                  }
                },
              ),
              FooterPaginationControl()
            ],
          ),
        ),
      ],
    );
  }
}

class ChevronButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const ChevronButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 0),
          minimumSize: Size(0, 20), // Set minimum height for the button
        ),
        child: Icon(
          icon,
          color: Colors.grey, // Dark grey chevron color
        ),
      ),
    );
  }
}

class SmallInput extends StatefulWidget {
  @override
  _SmallInputState createState() => _SmallInputState();
}

class _SmallInputState extends State<SmallInput> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 45, // Set the width of the input
      height: 30,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 12),
        cursorHeight: 10,
        controller: _controller,
        decoration: InputDecoration(
          // hintText: 'Enter text',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class RedCircleWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 24),
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 154, 16, 7),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: SvgPicture.asset(
            'assets/svg/chat.svg',
            width: 38,
            height: 38,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class FooterPaginationControl extends StatelessWidget {
  const FooterPaginationControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            RedCircleWithIcon(),
            SizedBox(width: 100),
            SmallInput(),
            Text("from 478 rows"),
          ],
        ),
        Expanded(child: Text("")),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: [
              ChevronButton(
                onPressed: () {},
                icon: Icons.first_page,
              ),
              ChevronButton(
                onPressed: () {},
                icon: Icons.chevron_left,
              ),
              SmallInput(),
              Text("from 48"),
              ChevronButton(
                onPressed: () {},
                icon: Icons.chevron_right,
              ),
              ChevronButton(
                onPressed: () {},
                icon: Icons.last_page,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class IconWithLinkPurple extends StatelessWidget {
  // logic disini sama persis dengan IconWithLink, cuma build view nya aja yg beda. Idealnya bisa pake extends atau implement
  final String label;
  final String url;
  final dynamic icon;

  const IconWithLinkPurple({
    Key? key,
    required this.label,
    required this.icon,
    this.url = 'https://nextjs.org/', // default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 20,
            height: 20,
          ),
          Container(padding: EdgeInsets.all(4.0), child: Text("Directory")),
        ],
      ),
    );
  }
}
