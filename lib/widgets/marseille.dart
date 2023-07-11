import 'package:arukari/widgets/searchbar.dart';
import 'package:flutter/material.dart';

import 'filter.dart';

class MyTabbedWidget extends StatefulWidget {
  @override
  _MyTabbedWidgetState createState() => _MyTabbedWidgetState();
}

class _MyTabbedWidgetState extends State<MyTabbedWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbed Widget'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Announcement'),
            Tab(text: 'Tasks'),
            Tab(text: 'Polling'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Row(
            children: [
              Expanded(child: FilterSelectWidget()),
              Expanded(child: SearchBar()),
            ],
          ),
          const Center(child: Text('Content for Tab 2')),
          const Center(child: Text('Content for Tab 3')),
        ],
      ),
    );
  }
}
