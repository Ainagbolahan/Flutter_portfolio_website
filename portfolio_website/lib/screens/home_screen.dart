import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/projects_tab.dart';

import 'about_screen.dart';

class MyHomePage extends StatefulWidget {
  static List<Widget> tabWidgets = <Widget>[
    AboutScreen(),
    ProjectsTab(),
  ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage.tabWidgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: 'Projects',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Colors.lightBlueAccent,
      ),
    );
  }
}
