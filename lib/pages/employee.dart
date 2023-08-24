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
  List<Employee> employees = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/api/employees'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      setState(() {
        employees = jsonData.map((data) {
          return Employee(
            name: data['name'],
            id: data['id'],
            organization: data['organization'],
            position: data['position'],
            email: data['email'],
          );
        }).toList();
      });
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
              DataTable(
                dataRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
                headingRowColor: MaterialStateColor.resolveWith(
                    (states) => Constants.f1f5f9),
                columns: [
                  DataColumn(label: Text('Employee Name')),
                  DataColumn(label: Text('Employee ID')),
                  DataColumn(label: Text('Organization')),
                  DataColumn(label: Text('Job Position')),
                  DataColumn(label: Text('Email')),
                ],
                rows: employees.map((employee) {
                  return DataRow(cells: [
                    DataCell(Text(employee.name)),
                    DataCell(Text(employee.id)),
                    DataCell(Text(employee.organization)),
                    DataCell(Text(employee.position)),
                    DataCell(Text(employee.email)),
                  ]);
                }).toList(),
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

class FooterPaginationControl extends StatelessWidget {
  const FooterPaginationControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("data"),
        Expanded(child: Text("")),
        Row(
          children: [
            ChevronButton(
              onPressed: () {},
              icon: Icons.first_page,
            ),
            ChevronButton(
              onPressed: () {},
              icon: Icons.chevron_left,
            ),
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
          Container(child: Text("Directory")),
        ],
      ),
    );
  }
}
