// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/sales/farmed_fish.dart';
import 'package:coral_ui/pages/sales/wild_caught_fish.dart';
import 'package:coral_ui/utils/list_fish.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Container(
              height: 286.h,
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
              padding: EdgeInsets.only(
                top: 48.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                    child: Container(
                      height: 64.h,
                      width: 148.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('lib/imgs/LogoCoral3.png'),
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.w,
                      right: 19.w,
                    ),
                    child: SizedBox(
                      height: 196.h,
                      child: ListView(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.w,
                            ),
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
                              horizontal: 6.w,
                            ),
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
                              horizontal: 6.w,
                            ),
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
                    height: 18.h,
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
                        left: 18.w,
                        right: 18.w,
                      ),
                      child: Container(
                        height: 63.h,
                        width: 298.w,
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
                              width: 16.w,
                            ),
                            Image(
                              height: 42.w,
                              width: 42.w,
                              image: AssetImage('lib/imgs/beach2.png'),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              "Wild-Caught Fish",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 16.fs,
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
                    height: 12.h,
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
                        left: 18.w,
                        right: 18.w,
                      ),
                      child: Container(
                        height: 63.h,
                        width: 298.w,
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
                              width: 16.w,
                            ),
                            Image(
                              height: 42.w,
                              width: 42.w,
                              image: AssetImage('lib/imgs/pond.png'),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              "Farmed Fish",
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 16.fs,
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
