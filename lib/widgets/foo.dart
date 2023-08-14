import 'package:flutter/material.dart';

class Zumba extends StatelessWidget {
  const Zumba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270, // ini PENYAKIT, KELEBARAN,
      margin: const EdgeInsets.only(bottom: 10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [EmployeeListWidget()],
              )),
        ],
      ),
    );
  }
}

class EmployeeListWidget extends StatelessWidget {
  const EmployeeListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: ListView.builder(
        itemCount: _employeeData.length,
        itemBuilder: (context, index) {
          final employee = _employeeData[index];
          return EmployeeListItem(
            avatar: employee.avatar,
            name: employee.name,
            position: employee.position,
          );
        },
      ),
    );
  }
}

class Employee {
  final String avatar;
  final String name;
  final String position;

  Employee({
    required this.avatar,
    required this.name,
    required this.position,
  });
}

class EmployeeListItem extends StatelessWidget {
  final String avatar;
  final String name;
  final String position;

  EmployeeListItem({
    required this.avatar,
    required this.name,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar),
        radius: 20,
      ),
      title: Text(name),
      subtitle: Text(
        position,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}

final List<Employee> _employeeData = [
  Employee(
    avatar: 'assets/avatar1.png', // Replace with actual image asset
    name: 'John Doe',
    position: 'Software Developer',
  ),
  Employee(
    avatar: 'assets/avatar2.png', // Replace with actual image asset
    name: 'Jane Smith',
    position: 'UI/UX Designer',
  ),
  // Add more employees as needed
];
