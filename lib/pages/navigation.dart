// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/create_nft.dart';
import 'package:coral_ui/pages/homepage.dart';
import 'package:coral_ui/pages/profile_page.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Homepage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: SizedBox(
        height: size.width * 0.185,
        width: size.width * 0.185,
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateNFT(),
              ),
            );
          },
          backgroundColor: Color.fromARGB(255, 95, 212, 177),
          splashColor: Color.fromARGB(255, 33, 179, 106),
          child: Image(
            height: size.width * 0.1,
            width: size.width * 0.1,
            image: AssetImage('lib/imgs/add.png'),
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: size.height * 0.125,
        width: size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
            topLeft: Radius.circular(60),
          ),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 66, 109, 87),
          unselectedItemColor: Color.fromARGB(255, 95, 212, 177),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: size.width * 0.12,
              ),
              label: 'Homepage',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: size.width * 0.12,
              ),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
