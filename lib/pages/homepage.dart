// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/sales/farmed_fish.dart';
import 'package:coral_ui/pages/sales/wild_caught_fish.dart';
import 'package:coral_ui/utils/list_fish.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        top: false,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              width: size.width * 1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 95, 212, 177),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.0325,
                  ),
                  Center(
                    child: Container(
                      height: size.height * 0.0775,
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('lib/imgs/LogoCoral3.png'),
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.0425,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                    ),
                    child: Container(
                      height: size.height * 0.315,
                      child: ListView(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.015),
                            child: ListFish(
                              name: 'Tuna Fish',
                              currentPrice: '0.002 ETH',
                              buyNowPrice: '0.1 ETH',
                              status: true,
                              listingID: '0001',
                              incrementPrice: '0.001 ETH',
                              placeOrigin: 'Meditterranean East Sea',
                              grade: 'A',
                              endAt: '08-05-23',
                              weight: '5500 Grams',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.015),
                            child: ListFish(
                              name: 'Tuna Fish',
                              currentPrice: '0.003 ETH',
                              buyNowPrice: '0.02 ETH',
                              status: true,
                              listingID: '0002',
                              incrementPrice: '0.001 ETH',
                              placeOrigin: 'Selat Sunda Sea',
                              grade: 'A',
                              endAt: '08-05-23',
                              weight: '3500 Grams',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.015),
                            child: ListFish(
                              name: 'Tuna Fish',
                              currentPrice: '0.001 ETH',
                              buyNowPrice: '1 ETH',
                              status: true,
                              listingID: '0003',
                              incrementPrice: '0.001 ETH',
                              placeOrigin: 'Korean Peninsula Sea',
                              grade: 'S',
                              endAt: '08-05-23',
                              weight: '2500 Grams',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.035,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WildCaughtFish(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.065,
                        right: size.width * 0.065,
                      ),
                      child: Container(
                        height: size.height * 0.1,
                        width: size.width * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Image(
                              height: size.width * 0.1275,
                              width: size.width * 0.1275,
                              image: AssetImage('lib/imgs/beach2.png'),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              "Wild-Caught Fish",
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
                  ),
                  SizedBox(
                    height: size.height * 0.0175,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FarmedFish(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.065,
                        right: size.width * 0.065,
                      ),
                      child: Container(
                        height: size.height * 0.1,
                        width: size.width * 0.85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Image(
                              height: size.width * 0.1275,
                              width: size.width * 0.1275,
                              image: AssetImage('lib/imgs/pond.png'),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              "Farmed Fish",
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
