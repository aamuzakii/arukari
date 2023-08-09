import 'package:flutter/material.dart';

class MyTabbedPage extends StatefulWidget {
  @override
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> {
  int _currentIndex = 0; // Index of the currently selected tab

  final List<TabData> tabs = [
    TabData(label: 'Home', content: 'Home Content'),
    TabData(label: 'Login', content: 'Login Content'),
    TabData(label: 'About', content: 'About Content'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Expanded(
            child: Center(
              child: Text(
                tabs[_currentIndex].content,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabData {
  final String label;
  final String content;

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
              color: isSelected || isHovered ? Colors.red : Colors.grey[300]!,
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
