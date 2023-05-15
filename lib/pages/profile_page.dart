// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/your_bids.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Container(
                height: size.height * 0.675,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 247),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.065,
                    horizontal: size.height * 0.03,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.0775,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/imgs/LogoCoral4.png'),
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.045,
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 255, 193, 99),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                        ),
                        child: Row(
                          children: [
                            Image(
                              height: size.width * 0.115,
                              width: size.width * 0.115,
                              image: AssetImage('lib/imgs/profile.png'),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              "Your Profile",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: size.height * 0.024,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
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
                              builder: (context) => YourBids(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.01,
                          ),
                          child: Row(
                            children: [
                              Image(
                                height: size.width * 0.115,
                                width: size.width * 0.115,
                                image: AssetImage('lib/imgs/bid.png'),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Text(
                                "Your Bids",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.024,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 255, 193, 99),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                        ),
                        child: Row(
                          children: [
                            Image(
                              height: size.width * 0.115,
                              width: size.width * 0.115,
                              image: AssetImage('lib/imgs/withdrawal.png'),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              "Withdrawal",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: size.height * 0.024,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 255, 193, 99),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                        ),
                        child: Row(
                          children: [
                            Image(
                              height: size.width * 0.115,
                              width: size.width * 0.115,
                              image: AssetImage('lib/imgs/shield.png'),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              "Authorize",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: size.height * 0.024,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Color.fromARGB(255, 255, 193, 99),
                      ),
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
