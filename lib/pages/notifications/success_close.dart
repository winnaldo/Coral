// ignore_for_file: prefer_const_constructors

import 'package:coral_ui/pages/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessClose extends StatelessWidget {
  const SuccessClose({super.key});

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
            height: size.height * 0.65,
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
                    "Transaction is completed, fish and NFT are on deliver! Enjoy using Coral as Decentralized Fishery and Aquaculture Application!",
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
                    height: size.height * 0.035,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.0225,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Listing ID",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: size.height * 0.021,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              "0003",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: size.height * 0.021,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Divider(
                          thickness: 1.2,
                          color: Color.fromARGB(255, 238, 227, 79),
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Trans. Hash",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: size.height * 0.021,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.3,
                              child: SingleChildScrollView(
                                clipBehavior: Clip.antiAlias,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: SelectableText(
                                  '0xbe403c384080728d4a7cecb3f24c85da0215b9d95408f5637aea3ced6cc4e50e',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      fontSize: size.height * 0.021,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.005,
                        ),
                        Divider(
                          thickness: 1.2,
                          color: Color.fromARGB(255, 238, 227, 79),
                        ),
                      ],
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
                          builder: (context) => Navigation(),
                        ),
                      );
                    },
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 1,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 204, 88),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            height: size.width * 0.0575,
                            width: size.width * 0.0575,
                            image: AssetImage('lib/imgs/home.png'),
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Text(
                            "Back to Home",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: size.height * 0.0235,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
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
