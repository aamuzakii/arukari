import 'package:flutter/material.dart';

class Employee {
  final String name;
  final String id;
  final String organization;
  final String position;
  final String email;

  Employee(this.name, this.id, this.organization, this.position, this.email);
}

class EmployeeTable extends StatelessWidget {
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
      children: [
        Text("data"),
        DataTable(
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
    );
  }
}
