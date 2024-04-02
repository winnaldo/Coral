// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
import 'package:coral_ui/pages/create_sale_part/create_nft.dart';
import 'package:coral_ui/pages/homepage.dart';
import 'package:coral_ui/pages/menu_page.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    super.key,
  });

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  final List<Widget> _pages = [
    Homepage(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: SizedBox(
        height: 62.w,
        width: 62.w,
        child: FloatingActionButton(
          shape: CircleBorder(),
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
            height: 28.w,
            width: 28.w,
            image: AssetImage('lib/imgs/add.png'),
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 68.h,
        width: size.width * 1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
            topLeft: Radius.circular(60),
          ),
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          home: BottomNavigationBar(
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
                  size: 38.w,
                ),
                label: 'Homepage',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 38.w,
                ),
                label: 'Profile',
              )
            ],
          ),
        ),
      ),
    );
  }
}
