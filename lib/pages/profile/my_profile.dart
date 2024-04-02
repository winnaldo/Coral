// ignore_for_file: prefer_const_constructors

import 'package:coral_ui/pages/profile/change_address.dart';
import 'package:coral_ui/pages/profile/change_email.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    image: const AssetImage('lib/imgs/profile.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "My Profile",
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
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 496.h,
                width: 320.w,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 248),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 16.h,
                    right: 14.w,
                    left: 14.w,
                    bottom: 14.h,
                  ),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      Container(
                        height: 48.h,
                        width: 124.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/imgs/LogoCoral4.png'),
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Seller Name",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 13.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 320.w,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                                horizontal: 12.w,
                              ),
                              child: SizedBox(
                                width: 224.w,
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    "NSLab Coral Corporation",
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 11.fs,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Wallet Address",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 13.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 320.w,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                                horizontal: 12.w,
                              ),
                              child: SizedBox(
                                width: 224.w,
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    "0x123718920378009178",
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 11.fs,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Mailing Address",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 13.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            height: 108.h,
                            width: 320.w,
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                                horizontal: 12.w,
                              ),
                              child: SizedBox(
                                width: 265.w,
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 11.fs,
                                        fontWeight: FontWeight.w500,
                                        height: 1.35,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Email",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 13.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 320.w,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                                horizontal: 12.w,
                              ),
                              child: SizedBox(
                                width: 224.w,
                                child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    "coral@nslab.tech",
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 11.fs,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Status",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 13.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 320.w,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                                horizontal: 12.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Authorized Seller",
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 11.fs,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Image(
                                    height: 15.w,
                                    width: 15.w,
                                    image: AssetImage('lib/imgs/check2.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                        ],
                      ),
                    ],
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
                          builder: (context) => ChangeEmail(),
                        ),
                      );
                    },
                    child: Container(
                      height: 40.h,
                      width: 146.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 95, 212, 177),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Change Email",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12.fs,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeAddress(),
                        ),
                      );
                    },
                    child: Container(
                      height: 40.h,
                      width: 146.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 109, 87),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Change Address",
                          style: GoogleFonts.lexend(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12.fs,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
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
