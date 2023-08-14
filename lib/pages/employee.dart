// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arukari/helper/constants.dart';
import 'package:arukari/widgets/big_text.dart';
import 'package:arukari/widgets/icon_with_link.dart';
import 'package:arukari/widgets/lucy.dart';
import 'package:arukari/widgets/middle_section.dart';
import 'package:arukari/widgets/common/navbar.dart';
import 'package:arukari/widgets/searchbar.dart';
import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/right_sidebar.dart';

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

  Employee(this.name, this.id, this.organization, this.position, this.email);
}

class Foo extends StatelessWidget {
  final List<Employee> employees = [
    Employee("Aam Khusnun Ni'am", "AI0082", "Quality Development",
        "QC Coordinator Lampung", "aam@aruna.id"),
    Employee(
        "Abd Rijal",
        "KM41044",
        "Operations",
        "Local Heroes Assistant Muara Pasir",
        "abdul.rijal@koperasijasamaritim.id"),
    Employee("Abdul Hakim", "AI0065", "Creative", "Designer Supervisor",
        "abdulhakim@aruna.id"),
  ];

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
          child: Container(
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
                      SvgPicture.asset(
                        'assets/svg/column.svg',
                        width: 20,
                        height: 20,
                      ),
                      SvgPicture.asset(
                        'assets/svg/insight.svg',
                        width: 20,
                        height: 20,
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
              ],
            ),
          ),
        ),
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
