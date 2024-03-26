// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coral_ui/pages/create_sale.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessNFT extends StatelessWidget {
  const SuccessNFT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            height: 382.h,
            width: 312.w,
            decoration: BoxDecoration(
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
                        height: 1.35,
                      ),
                    ),
                  ),
                  Text(
                    "Successfully create NFT, please copy this NFT-ID number and continue",
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
                  Container(
                    height: 48.h,
                    width: 256.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 250, 237),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: SelectableText(
                        "NFT-ID-0003",
                        style: GoogleFonts.lexend(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 66, 109, 87),
                            fontSize: 13.fs,
                            fontWeight: FontWeight.w800,
                            height: 1.35,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateSale(),
                        ),
                      );
                    },
                    child: Container(
                      height: 40.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 109, 87),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14.fs,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
