// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/authorize/authorize_option.dart';
import 'package:coral_ui/pages/order_page.dart';
import 'package:coral_ui/pages/profile/my_profile.dart';
import 'package:coral_ui/pages/withdrawal_page.dart';
import 'package:coral_ui/pages/bids_page.dart';
import 'package:coral_ui/utils/constant.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 64.h,
            ),
            Center(
              child: Container(
                height: 384.h,
                width: 312.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 247),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 38.h,
                    horizontal: 24.w,
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
                        height: 26.h,
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 255, 193, 99),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyProfile(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 3.h,
                          ),
                          child: Container(
                            height: 28.h,
                            width: 258.w,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Image(
                                  height: 32.w,
                                  width: 32.w,
                                  image: AssetImage('lib/imgs/profile.png'),
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Text(
                                  "My Profile",
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      fontSize: 15.fs,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 255, 193, 99),
                      ),
                      if (loginProvider.savedLoginAs != loginAs.AUTHORITY) ...{
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BidsPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 3.h,
                            ),
                            child: Container(
                              height: 28.h,
                              width: 258.w,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Image(
                                    height: 32.w,
                                    width: 32.w,
                                    image: AssetImage('lib/imgs/bid.png'),
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  Text(
                                    loginProvider.savedLoginAs == loginAs.BUYER
                                        ? "My Bids"
                                        : "My Sale",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 15.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          color: Color.fromARGB(255, 255, 193, 99),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 3.h,
                            ),
                            child: Container(
                              height: 28.h,
                              width: 258.w,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Image(
                                    height: 32.w,
                                    width: 32.w,
                                    image: AssetImage('lib/imgs/cart.png'),
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  Text(
                                    "My Orders",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 15.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          color: Color.fromARGB(255, 255, 193, 99),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Withdrawal(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 3.h,
                            ),
                            child: Container(
                              height: 28.h,
                              width: 258.w,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Image(
                                    height: 32.w,
                                    width: 32.w,
                                    image:
                                        AssetImage('lib/imgs/withdrawal.png'),
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  Text(
                                    "Withdrawal",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 15.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          color: Color.fromARGB(255, 255, 193, 99),
                        ),
                      },
                      if (loginProvider.savedLoginAs == loginAs.AUTHORITY) ...{
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AuthorizeOption(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 3.h,
                            ),
                            child: Container(
                              height: 28.h,
                              width: 258.w,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Image(
                                    height: 32.w,
                                    width: 32.w,
                                    image: AssetImage('lib/imgs/check2.png'),
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  Text(
                                    "Authorize",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 15.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          color: Color.fromARGB(255, 255, 193, 99),
                        ),
                      }
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
