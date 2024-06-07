import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:civiconnect/screens/home_screen.dart';
import 'package:civiconnect/screens/notification_screen.dart';
import 'package:civiconnect/screens/profile_screen.dart';
import 'package:civiconnect/screens/search_screen.dart';
import 'package:civiconnect/screens/write_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    SearchScreen(),
    WriteScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final navBarIcons = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          _selectedIndex == 0
              ? CupertinoIcons.house_fill
              : CupertinoIcons.house,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _selectedIndex == 1
              ? CupertinoIcons.search_circle_fill
              : CupertinoIcons.search_circle,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _selectedIndex == 2 ? Icons.create : Icons.create_outlined,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          _selectedIndex == 3 ? CupertinoIcons.bell_fill : CupertinoIcons.bell,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 4
              ? CupertinoIcons.person_circle_fill
              : CupertinoIcons.person_circle,
          size: 26,
        ),
        label: '',
      ),
    ];

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Stack(
        children: [
          SizedBox(
            height: 75,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              items: navBarIcons,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Color(0xFFFF5722),
              unselectedItemColor: Colors.grey,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
