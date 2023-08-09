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
              CustomTableCell(text: 'Cell 1'),
              CustomTableCell(text: 'Cell 2'),
              CustomTableCell(text: 'Cell 3'),
            ],
          ),
          TableRow(
            children: <Widget>[
              CustomTableCell(text: 'Cell 4'),
              CustomTableCell(text: 'Cell 5'),
              CustomTableCell(text: 'Cell 6'),
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
