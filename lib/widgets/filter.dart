import 'package:flutter/material.dart';

class FilterSelectWidget extends StatefulWidget {
  const FilterSelectWidget({Key? key}) : super(key: key);

  @override
  _FilterSelectWidgetState createState() => _FilterSelectWidgetState();
}

class _FilterSelectWidgetState extends State<FilterSelectWidget> {
  String _selectedOption = 'All Category'; // Default selected option

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          const Text(
            'Filter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: DropdownButton<String>(
              value: _selectedOption,
              underline: Container(), // Remove the default underline
              isExpanded: true,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue!;
                });
              },
              items: <String>['All Category', 'Uncategorized']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          const SizedBox(width: 16.0),
        ],
      ),
    );
  }
}
