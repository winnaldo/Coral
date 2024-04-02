// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:coral_ui/pages/login_part/register_buyer.dart';
import 'package:coral_ui/pages/login_part/register_seller.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationOption extends StatelessWidget {
  const RegistrationOption({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6.w,
                        ),
                        Image(
                          height: 14.w,
                          width: 14.w,
                          image: AssetImage('lib/imgs/back.png'),
                          color: Color.fromARGB(255, 252, 250, 237),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Back",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 252, 250, 237),
                              fontSize: 15.fs,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    height: 310.h,
                    width: 280.w,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 56.h,
                            width: 148.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/imgs/registration.png'),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterSeller(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 172.h,
                                  width: 116.w,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 252, 250, 237),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 16.h,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(),
                                        Image(
                                          height: 60.w,
                                          width: 60.w,
                                          image:
                                              AssetImage('lib/imgs/store.png'),
                                        ),
                                        Text(
                                          "Seller",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: 15.h,
                                              fontWeight: FontWeight.w800,
                                              height: 1.35,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterBuyer(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 172.h,
                                  width: 116.w,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 252, 250, 237),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 16.h,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(),
                                        Image(
                                          height: 60.w,
                                          width: 60.w,
                                          image:
                                              AssetImage('lib/imgs/cart.png'),
                                        ),
                                        Text(
                                          "Buyer",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: 15.h,
                                              fontWeight: FontWeight.w800,
                                              height: 1.35,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            "Tap to choose",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 10.h,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
