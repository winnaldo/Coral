// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coral_ui/pages/create_sale.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessNFT extends StatelessWidget {
  const SuccessNFT({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            height: size.height * 0.6,
            width: size.width * 0.85,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 253, 250),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.05,
                right: size.width * 0.04,
                left: size.width * 0.04,
                bottom: size.width * 0.04,
              ),
              child: Column(
                children: [
                  Image(
                    height: size.width * 0.29,
                    width: size.width * 0.29,
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
                        fontSize: size.height * 0.065,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Successfully create NFT, now please copy this NFT-ID Number and continue",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Container(
                    height: size.height * 0.075,
                    width: size.width * 1,
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
                            fontSize: size.height * 0.0235,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
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
                      height: size.height * 0.06,
                      width: size.width * 1,
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
                              fontSize: size.height * 0.0235,
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
