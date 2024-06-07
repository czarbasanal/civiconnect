import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navBarIcons = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 0 ? CupertinoIcons.house_fill : CupertinoIcons.house,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 1
              ? CupertinoIcons.search_circle_fill
              : CupertinoIcons.search_circle,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 2 ? Icons.create : Icons.create_outlined,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 3 ? CupertinoIcons.bell_fill : CupertinoIcons.bell,
          size: 26,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          selectedIndex == 4
              ? CupertinoIcons.video_camera_solid
              : CupertinoIcons.video_camera,
          size: 26,
        ),
        label: '',
      ),
    ];

    return Stack(
      children: [
        SizedBox(
          height: 75,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            // backgroundColor: AppStyles.colorScheme.primary,
            items: navBarIcons,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
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
    );
  }
}
