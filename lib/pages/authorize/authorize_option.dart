// ignore_for_file: prefer_const_constructors

import 'package:coral_ui/pages/authorize/search_product.dart';
import 'package:coral_ui/pages/authorize/search_seller.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorizeOption extends StatelessWidget {
  const AuthorizeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 24.h,
            right: 12.w,
            left: 12.w,
            bottom: 18.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 6.w,
                  ),
                  Image(
                    height: 14.w,
                    width: 14.w,
                    image: const AssetImage('lib/imgs/back.png'),
                    color: const Color.fromARGB(255, 66, 109, 87),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image(
                    height: 22.w,
                    width: 22.w,
                    image: const AssetImage('lib/imgs/check2.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Authorize",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 66, 109, 87),
                        fontSize: 15.fs,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 336.h,
                width: 298.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 247),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 38.h,
                    bottom: 12.h,
                    left: 24.w,
                    right: 24.w,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 56.h,
                        width: 132.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/imgs/LogoCoral4.png'),
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchSeller(),
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
                                      image: AssetImage('lib/imgs/store.png'),
                                    ),
                                    Text(
                                      "Seller",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
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
                                  builder: (context) => SearchProduct(),
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
                                      image: AssetImage('lib/imgs/fish3.png'),
                                    ),
                                    Text(
                                      "Product",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
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
                        height: 16.h,
                      ),
                      Text(
                        "Tap to select the category to authorize",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 66, 109, 87),
                            fontSize: 9.h,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
