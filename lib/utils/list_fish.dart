// ignore_for_file: prefer_const_constructors

import 'package:coral_ui/pages/fish_information.dart';
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
  final bool status;
  final String endAt;

  const ListFish(
      {super.key,
      required this.name,
      required this.currentPrice,
      required this.buyNowPrice,
      required this.status,
      required this.listingID,
      required this.incrementPrice,
      required this.placeOrigin,
      required this.grade,
      required this.endAt,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

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
        height: size.height * 0.315,
        width: size.width * 0.445,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.035,
            vertical: size.height * 0.015,
          ),
          child: Column(
            children: [
              Container(
                height: size.height * 0.15,
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/imgs/tuna.png'),
                      fit: BoxFit.scaleDown),
                ),
              ),
              SizedBox(
                height: size.height * 0.0005,
              ),
              SizedBox(
                width: size.width * 0.3,
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
                          fontSize: size.height * 0.029,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Starting",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.0165,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.175,
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
                                fontSize: size.height * 0.0165,
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
                height: size.height * 0.005,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Buy Now",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.0165,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.175,
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
                            fontSize: size.height * 0.0165,
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
