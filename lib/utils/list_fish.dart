// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:coral_ui/utils/fish_information.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListFish extends StatelessWidget {
  final String name;
  final String listingID;
  final String currentPrice;
  final String incrementPrice;
  final String buyNowPrice;
  final String placeOrigin;
  final String grade;
  final String weight;
  final status;
  final String endAt;

  const ListFish({
    super.key,
    required this.name,
    required this.currentPrice,
    required this.buyNowPrice,
    required this.status,
    required this.listingID,
    required this.incrementPrice,
    required this.placeOrigin,
    required this.grade,
    required this.endAt,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FishInformation(
                name: name,
                listingID: listingID,
                currentPrice: currentPrice,
                incrementPrice: incrementPrice,
                buyNowPrice: buyNowPrice,
                placeOrigin: placeOrigin,
                grade: grade,
                weight: weight,
                status: status,
                endAt: endAt),
          ),
        );
      },
      child: Container(
        height: 72.h,
        width: 152.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 11.h,
          ),
          child: Column(
            children: [
              Container(
                height: 96.w,
                width: 96.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/imgs/tuna.png'),
                      fit: BoxFit.scaleDown),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: 128.w,
                child: Center(
                  child: SingleChildScrollView(
                    reverse: false,
                    clipBehavior: Clip.antiAlias,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      name,
                      style: GoogleFonts.lexend(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 66, 109, 87),
                          fontSize: 18.fs,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Current",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: 10.fs,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 72.w,
                        child: SingleChildScrollView(
                          reverse: true,
                          clipBehavior: Clip.antiAlias,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            currentPrice,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 10.fs,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Buy Now",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: 10.fs,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 72.w,
                    child: SingleChildScrollView(
                      reverse: true,
                      clipBehavior: Clip.antiAlias,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        buyNowPrice,
                        style: GoogleFonts.lexend(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 66, 109, 87),
                            fontSize: 10.fs,
                            fontWeight: FontWeight.w600,
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
