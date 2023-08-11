import 'package:arukari/widgets/lucy.dart';
import 'package:arukari/widgets/middle_section.dart';
import 'package:arukari/widgets/common/navbar.dart';
import 'package:arukari/widgets/sidebar.dart';
import 'package:flutter/material.dart';
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

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          LucyWidget(),
          const SizedBox(height: 30),
          FractionallySizedBox(
            widthFactor: 0.67,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LeftSidebar(),
                SizedBox(width: 30),
                MiddleSection(),
                SizedBox(width: 30),
                RightSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RightSection extends StatelessWidget {
  const RightSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        RightSidebar(),
        SizedBox(height: 30),
        RightSidebar(),
      ],
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
    return DataTable(
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
    );
  }
}
