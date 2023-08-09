import 'package:flutter/material.dart';

class BasicInfoTable extends StatelessWidget {
  final List<List<String>> data;

  BasicInfoTable({required this.data});

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
