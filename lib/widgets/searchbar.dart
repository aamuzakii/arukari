import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(color: const Color(0xffe2e2e2), width: 1.0),
      ),
      child: Row(
        children: const [
          SizedBox(width: 10.0),
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 14),
                focusColor: Colors.white,
                fillColor: Colors.white,
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
