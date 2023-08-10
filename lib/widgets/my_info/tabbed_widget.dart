import 'dart:ffi';

import 'package:arukari/helper/constants.dart';
import 'package:arukari/widgets/my_info/basic_info_table.dart';
import 'package:arukari/widgets/my_info/button.dart';
import 'package:arukari/widgets/my_info/sidebar.dart';
import 'package:flutter/material.dart';

class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({Key? key}) : super(key: key);

  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> {
  int _currentIndex = 0; // Index of the currently selected tab

  final List<TabData> tabs = [
    TabData(label: 'Basic Info', content: NewWidget()),
    TabData(label: 'Family', content: NewWidget()),
    TabData(label: 'Emergency contact', content: NewWidget()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: tabs.map((tab) {
                final index = tabs.indexOf(tab);
                final isSelected = index == _currentIndex;
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: TabButton(
                    label: tab.label,
                    isSelected: isSelected,
                    isHovered: index == _currentIndex,
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
            // tabs[_currentIndex].content,
            Expanded(
              child: Center(
                child: tabs[_currentIndex].content,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget({
    Key? key,
  }) : super(key: key);

  final List<List<String>> personalData = [
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

  final List<List<String>> identityAddress = [
    ['ID type', 'KTP'],
    ['ID number', '3273162805960004'],
    ['ID expiration date', 'Permanent'],
    ['Postal code', '40293'],
    [
      'Citizen ID address',
      'Jl. E. Andjali 1 no 4, Cisaranten Endah, Kec. Arcamanik, Kota Bandung, Jawa Barat'
    ],
    [
      'Residential address',
      'Jl. Setiabudi No. 262, Pondok Kacang Timur, Pondok Aren, Tangerang Selatan'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Personal data"),
                width: 200.0,
              ),
              BasicInfoTable(data: personalData),
              EditButton(),
            ],
          ),
        ),
        ThinLine(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Identity & Address"),
                width: 200.0,
              ),
              BasicInfoTable(data: identityAddress),
              EditButton()
            ],
          ),
        ),
      ],
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverBorderButton(
      onPressed: () {},
      text: 'Edit',
    );
  }
}

class TabData {
  final String label;
  final Widget content;

  TabData({required this.label, required this.content});
}

class TabButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isHovered;
  final VoidCallback onTap;

  TabButton({
    required this.label,
    required this.isSelected,
    required this.isHovered,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2.5,
              color: isSelected || isHovered
                  ? Constants.redMekariHex
                  : Colors.grey[300]!,
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
            color: Colors.black, // Use default color
          ),
        ),
      ),
    );
  }
}
