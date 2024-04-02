// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:coral_ui/pages/navigation.dart';
import 'package:coral_ui/utils/constant.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessProfile extends StatefulWidget {
  final changeTo;
  const SuccessProfile({super.key, required this.changeTo});

  @override
  State<SuccessProfile> createState() => _SuccessProfileState();
}

class _SuccessProfileState extends State<SuccessProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            height: 454.h,
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
                  if (widget.changeTo == changeTo.EMAIL) ...{
                    Text(
                      "Successfully change your email, now people may contact you through your new email. Enjoy using Coral!",
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
                  } else if (widget.changeTo == changeTo.ADDRESS) ...{
                    Text(
                      "Successfully change your mailing address, now mailing of fishery products and other will be sent to new address. Enjoy using Coral!",
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
                  },
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
                              "Wal. Address",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: const Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 12.fs,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 112.w,
                              child: SingleChildScrollView(
                                reverse: false,
                                clipBehavior: Clip.antiAlias,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  '0x12312312312312983',
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
                        SizedBox(
                          height: 1.h,
                        ),
                        if (widget.changeTo == changeTo.EMAIL) ...{
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Email",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 12.fs,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 112.w,
                                child: SingleChildScrollView(
                                  reverse: false,
                                  clipBehavior: Clip.antiAlias,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    'coralcorporation@nslab.tech',
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
                        } else if (widget.changeTo == changeTo.ADDRESS) ...{
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mailing Address",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 12.fs,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 66.h,
                                  width: 265.w,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 11.fs,
                                          fontWeight: FontWeight.w500,
                                          height: 1.35,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                        },
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
