// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:coral_ui/pages/homepage.dart';
import 'package:coral_ui/pages/navigation.dart';
import 'package:coral_ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? isChecked = false;
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Navigation(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/imgs/beach.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height * 0.001,
              ),
              Center(
                child: Container(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                    child: Container(),
                  ),
                ),
              ),
              Column(
                children: [
                  Hero(
                    tag: 'coral_logo',
                    child: Center(
                      child: Container(
                        height: size.height * 0.2,
                        width: size.width * 0.75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/imgs/LogoCoral2.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.5,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.015,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('lib/imgs/login.png'),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.11,
                                width: size.width * 1,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 252, 250, 237),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.01,
                                      horizontal: size.width * 0.035),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Wallet Address",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 34, 96, 12),
                                              fontSize: size.width * 0.035,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      SizedBox(
                                        height: size.height * 0.05,
                                        width: size.width * 1,
                                        child: TextField(
                                          cursorColor:
                                              Color.fromARGB(255, 34, 96, 12),
                                          decoration: InputDecoration(
                                            icon: Icon(
                                              Icons.key,
                                              color: Color.fromARGB(
                                                  92, 34, 96, 12),
                                            ),
                                            isDense: true,
                                            border: InputBorder.none,
                                            hintText: 'Address',
                                            hintStyle: TextStyle(
                                              fontSize: size.height * 0.02,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                  92, 34, 96, 12),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.00001,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Remember Address",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 34, 96, 12),
                                              fontSize: size.height * 0.0175,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (bool? newValue) {
                                          setState(
                                            () {
                                              isChecked = newValue;
                                            },
                                          );
                                        },
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        checkColor: Colors.white,
                                        activeColor:
                                            Color.fromARGB(255, 34, 96, 12),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, bottom: 5),
                                child: GestureDetector(
                                  onTap: () {
                                    _isLoading ? null : _onSubmit();
                                  },
                                  child: Container(
                                    height: size.height * 0.0645,
                                    width: size.width * 0.7,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: _isLoading
                                          ? Container(
                                              width: 24,
                                              height: 24,
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child:
                                                  const CircularProgressIndicator(
                                                color: Colors.white,
                                                strokeWidth: 3,
                                              ),
                                            )
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image(
                                                  height: size.width * 0.07,
                                                  width: size.width * 0.07,
                                                  image: AssetImage(
                                                      'lib/imgs/door.png'),
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.015,
                                                ),
                                                Text(
                                                  "Enter",
                                                  style: GoogleFonts.lexend(
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize:
                                                          size.height * 0.0235,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.0065,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Unregistered on Coral?",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: size.height * 0.0155,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.0125,
                                  ),
                                  Text(
                                    "Register Here!",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 1, 211, 176),
                                          fontSize: size.height * 0.0155,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
