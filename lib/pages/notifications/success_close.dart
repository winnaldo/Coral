import 'package:coral_ui/pages/navigation.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessClose extends StatelessWidget {
  const SuccessClose({super.key});

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
                    image: const AssetImage('lib/imgs/check.png'),
                  ),
                  Text(
                    "Success !",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.breeSerif(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 66, 109, 87),
                        fontSize: 38.fs,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Transaction is completed, fish and NFT are on deliver! Enjoy using Coral as Decentralized Fishery and Aquaculture Application!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 66, 109, 87),
                        fontSize: 10.fs,
                        fontWeight: FontWeight.w600,
                        height: 1.35,
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
                              "Listing ID",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: const Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 12.fs,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              "0003",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: const Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 12.fs,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        const Divider(
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
                              "Trans. Hash",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: const Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 12.fs,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 128.w,
                              child: SingleChildScrollView(
                                clipBehavior: Clip.antiAlias,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: SelectableText(
                                  '0xbe403c384080728d4a7cecb3f24c85da0215b9d95408f5637aea3ced6cc4e50e',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 66, 109, 87),
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
                        const Divider(
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
                            builder: (context) => const Navigation(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40.h,
                        width: 320.w,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 204, 88),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 15.w,
                              width: 15.w,
                              image: const AssetImage('lib/imgs/home.png'),
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
