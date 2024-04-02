// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables
import 'dart:ui';
import 'package:coral_ui/pages/login_part/login.dart';
import 'package:coral_ui/utils/constant.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessRegister extends StatefulWidget {
  final registerAs;
  const SuccessRegister({super.key, required this.registerAs});

  @override
  State<SuccessRegister> createState() => _SuccessRegisterState();
}

class _SuccessRegisterState extends State<SuccessRegister> {
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
                          Image(
                            height: 72.w,
                            width: 72.w,
                            image: AssetImage('lib/imgs/check.png'),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "Success !",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.breeSerif(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 32.fs,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          if (widget.registerAs == registerAs.SELLER) ...{
                            Text(
                              "Account successfully created as a Seller! Dive into Coral to securely list and sell your top-quality fishes",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 10.fs,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          } else if (widget.registerAs == registerAs.BUYER) ...{
                            Text(
                              "Account successfully created as a Buyer! Start exploring Coral to securely purchase the highest quality fishes available",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 10.fs,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          },
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
                                    builder: (context) => Login(),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      height: 16.w,
                                      width: 16.w,
                                      image: AssetImage('lib/imgs/door.png'),
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      "Login",
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.fs,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
