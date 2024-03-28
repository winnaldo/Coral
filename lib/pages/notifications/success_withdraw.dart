// ignore_for_file: prefer_const_constructors

import 'package:coral_ui/pages/navigation.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessWithdraw extends StatelessWidget {
  const SuccessWithdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            height: 404.h,
            width: 312.w,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 253, 250),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 24.h,
                right: 12.w,
                left: 12.w,
                bottom: 24.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 88.w,
                    width: 88.w,
                    image: AssetImage('lib/imgs/check.png'),
                  ),
                  Text(
                    "Success !",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.breeSerif(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: 38.fs,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Successfully withdrawn your money back to your cryptocurrency wallet, please check your wallet and Enjoy using Coral!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: 10.fs,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Amount",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 12.fs,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 64.w,
                                  child: SingleChildScrollView(
                                    reverse: true,
                                    clipBehavior: Clip.antiAlias,
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: SelectableText(
                                      '0.000000000001',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 12.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Text(
                                  "ETH",
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      fontSize: 12.fs,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Divider(
                          thickness: 1.2,
                          color: Color.fromARGB(255, 238, 227, 79),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Wal. Address",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 12.fs,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 128.w,
                              child: SingleChildScrollView(
                                clipBehavior: Clip.antiAlias,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: SelectableText(
                                  '0x2fa532d8a83ab34a642d50c436d9d3df650e0a28c2f0f3b70e3046332d5ff8a7',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      fontSize: 12.fs,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Divider(
                          thickness: 1.2,
                          color: Color.fromARGB(255, 238, 227, 79),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Navigation(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 204, 88),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 15.w,
                              width: 15.w,
                              image: AssetImage('lib/imgs/home.png'),
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Back to Home",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.fs,
                                  fontWeight: FontWeight.w700,
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
            ),
          ),
        ),
      ),
    );
  }
}
