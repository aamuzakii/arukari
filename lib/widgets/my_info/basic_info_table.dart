import 'package:flutter/material.dart';

class BasicInfoTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        defaultColumnWidth:
            const IntrinsicColumnWidth(), // Automatically size columns
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              CustomTableCell(text: 'Full name'),
              CustomTableCell(text: 'Abdullah Al Muzaki'),
            ],
          ),
          TableRow(
            children: <Widget>[
              CustomTableCell(text: 'email'),
              CustomTableCell(text: 'abdullah.muzaki@aruna.id'),
            ],
          ),
        ],
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
