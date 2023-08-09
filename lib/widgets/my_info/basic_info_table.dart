import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class BasicInfoTable extends StatelessWidget {
  final List<List<String>> data = [
    ['Full name', 'Abdullah Al Muzaki'],
    ['Mobile phone', '083894588105'],
    ['Email', 'abdullah.muzaki@aruna.id'],
    ['Phone', '-'],
    ['Place of birth', 'Bandung'],
    ['Birthdate', '28 May 1996'],
    ['Gender', 'Male'],
    ['Marital status', 'Married'],
    ['Blood type', 'O'],
    ['Religion', 'Islam'],
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        defaultColumnWidth: const IntrinsicColumnWidth(),
        children: data.map((rowData) {
          return TableRow(
            children: rowData.map((cellText) {
              return CustomTableCell(text: cellText);
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}

class CustomTableCell extends StatelessWidget {
  final String text;

  const CustomTableCell({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(text),
    );
  }
}
