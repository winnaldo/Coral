// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coral_ui/utils/list_fish.dart';
import 'package:coral_ui/utils/sizing.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 24.h,
            right: 18.w,
            left: 18.w,
            bottom: 22.h,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    height: 14.w,
                    width: 14.w,
                    image: AssetImage('lib/imgs/back.png'),
                    color: Color.fromARGB(255, 66, 109, 87),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image(
                    height: 22.w,
                    width: 22.w,
                    image: AssetImage('lib/imgs/bid.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Your Bids",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: 15.fs,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Expanded(
                child: GridView.count(
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  mainAxisSpacing: 12.h,
                  crossAxisSpacing: 12.w,
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
                height: 14.h,
              ),
              Text(
                "Always recheck the current price of the fishes, if it is not your offer, somebody might outbid your offer. Your can make a new bid offer or withdraw",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 66, 109, 87),
                    fontSize: 10.fs,
                    fontWeight: FontWeight.w600,
                    height: 1.35,
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
