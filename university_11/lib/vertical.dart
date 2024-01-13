import 'package:flutter/material.dart';


class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with 3 tabs
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vertical Tabs Example'),
      ),
      body: Row(
        children: [
          // Vertical Tab Bar
          Container(
            color: Colors.blue,
            child: RotatedBox(
              quarterTurns: -1,
              child: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                ],
              ),
            ),
          ),
          // Content Area for the vertical tabs
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: Text('Tab 1 Content')),
                Center(child: Text('Tab 2 Content')),
                Center(child: Text('Tab 3 Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the TabController when the widget is disposed
    _tabController.dispose();
    super.dispose();
  }
}