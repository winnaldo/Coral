// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:coral_ui/pages/navigation.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
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
                height: 1.h,
              ),
              Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4,
                    sigmaY: 4,
                  ),
                  child: Container(),
                ),
              ),
              Column(
                children: [
                  Hero(
                    tag: 'coral_logo',
                    child: Center(
                      child: Container(
                        height: 104.h,
                        width: 208.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/imgs/LogoCoral2.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 320.h,
                    width: 290.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                height: 52.h,
                                width: 104.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('lib/imgs/login.png'),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                height: 60.h,
                                width: 320.w,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 252, 250, 237),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5.h,
                                    horizontal: 12.w,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Wallet Address",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 34, 96, 12),
                                              fontSize: 10.fs,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      SizedBox(
                                        height: 35.h,
                                        width: 320.w,
                                        child: TextField(
                                          cursorColor:
                                              Color.fromARGB(255, 34, 96, 12),
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: 12.fs,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
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
                                              fontSize: 12.fs,
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
                                  SizedBox(),
                                  Row(
                                    children: [
                                      Text(
                                        "Remember Address",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color:
                                                Color.fromARGB(255, 34, 96, 12),
                                            fontSize: 10.fs,
                                            fontWeight: FontWeight.w600,
                                          ),
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
                                    height: 40.h,
                                    width: 260.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: _isLoading
                                          ? SizedBox(
                                              width: 18.w,
                                              height: 18.w,
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
                                                  height: 20.w,
                                                  width: 20.w,
                                                  image: AssetImage(
                                                      'lib/imgs/door.png'),
                                                  color: Colors.white,
                                                ),
                                                SizedBox(
                                                  width: 6.w,
                                                ),
                                                Text(
                                                  "Enter",
                                                  style: GoogleFonts.lexend(
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.fs,
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
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Unregistered on Coral?",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 10.fs,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    "Register Here!",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 1, 211, 176),
                                        fontSize: 10.fs,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12.h,
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
                height: 48.h,
                width: 96.w,
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
