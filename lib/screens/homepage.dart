import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rental_app/screens/map_screen.dart';
import 'package:rental_app/screens/homescreen.dart';
import 'package:rental_app/screens/notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rental_app/screens/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List _pages = [
    Homescreen(),
    MapScreen(),
    NotificationScreen(),
    ProfileSection(),
  ];
  List<int> iconSizes = [];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      // bottomNavigationBar: CupertinoTabBar(
      //   activeColor: Colors.blue,
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.map_rounded),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.history),
      //     ),
      //   ],
      //   onTap: (value) {
      //     setState(() {
      //       _currentIndex = value;
      //     });
      //   },
      // ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.blue,
        scaleFactor: 1.5,
        iconSize: 25,
        borderColor: Colors.black.withOpacity(0.3),
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.center,
        icons: [
          FontAwesomeIcons.houseChimney,
          FontAwesomeIcons.solidMap,
          FontAwesomeIcons.solidBell,
          FontAwesomeIcons.userAstronaut,
        ],
        activeIndex: _currentIndex,
        onTap: (p0) {
          setState(() {
            _currentIndex = p0;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_rounded,
          size: 30,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
