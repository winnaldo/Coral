// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coral_ui/utils/list_fish.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourBids extends StatefulWidget {
  const YourBids({super.key});

  @override
  State<YourBids> createState() => _YourBidsState();
}

class _YourBidsState extends State<YourBids> {
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
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.05,
            right: size.width * 0.05,
            left: size.width * 0.05,
            bottom: size.width * 0.05,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    height: size.width * 0.07,
                    width: size.width * 0.07,
                    image: AssetImage('lib/imgs/back.png'),
                    color: Color.fromARGB(255, 66, 109, 87),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Image(
                    height: size.width * 0.095,
                    width: size.width * 0.095,
                    image: AssetImage('lib/imgs/bid.png'),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Text(
                    "Your Bids",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.0285,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              SizedBox(
                height: size.height * 0.71,
                child: GridView.count(
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  mainAxisSpacing: size.height * 0.02,
                  crossAxisSpacing: size.width * 0.03,
                  crossAxisCount: 2,
                  childAspectRatio: 0.725,
                  children: [
                    ListFish(
                      name: 'Tuna Fish',
                      currentPrice: '0.002 ETH',
                      buyNowPrice: '1 ETH',
                      status: false,
                      listingID: '0003',
                      incrementPrice: '0.001 ETH',
                      placeOrigin: 'Korean Peninsula Sea',
                      grade: 'S',
                      endAt: '08-05-23',
                      weight: '2500 Grams',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Always recheck the current price of the fishes, if it is not your offer, somebody might outbid your offer. Your can make a new bid offer or withdraw",
                textAlign: TextAlign.center,
                style: GoogleFonts.lexend(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 66, 109, 87),
                    fontSize: size.height * 0.016,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
