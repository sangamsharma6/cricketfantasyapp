import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:sricket/Screens/One.dart';

import 'Screens/Four.dart';
import 'Screens/Three.dart';
import 'Screens/Two.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            One(),
            Two(),
            Three(),
            Four()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text('Home'),activeColor: Colors.deepPurple,inactiveColor: Colors.grey),
          BottomNavyBarItem(icon: Icon(Icons.history), title: Text('History'),activeColor: Colors.deepPurple,inactiveColor: Colors.grey),
          BottomNavyBarItem(icon: Icon(Icons.person), title: Text('Profile'),activeColor: Colors.deepPurple,inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.settings), title: Text('Settings'),activeColor: Colors.deepPurple,inactiveColor: Colors.grey),
        ],
      ),
    );
  }
}
