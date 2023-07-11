import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
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
          const SizedBox(width: 10.0),
          Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Perform search action
            },
            icon: Icon(Icons.clear),
            color: Colors.grey,
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
