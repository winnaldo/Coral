// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:coral_ui/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        setState(
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/imgs/beach.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: Container(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(),
                  ),
                ),
              ),
              Hero(
                tag: 'coral_logo',
                child: Center(
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/imgs/LogoCoral2.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/imgs/NSLAB.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
