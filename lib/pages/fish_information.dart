// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coral_ui/pages/close_auction.dart';
import 'package:coral_ui/pages/make_a_bid.dart';
import 'package:coral_ui/pages/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FishInformation extends StatefulWidget {
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

  const FishInformation(
      {super.key,
      required this.name,
      required this.listingID,
      required this.currentPrice,
      required this.incrementPrice,
      required this.buyNowPrice,
      required this.placeOrigin,
      required this.grade,
      required this.weight,
      required this.status,
      required this.endAt});

  @override
  State<FishInformation> createState() => _FishInformationState();
}

class _FishInformationState extends State<FishInformation> {
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
                    image: AssetImage('lib/imgs/fish2.png'),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Text(
                    "Fish Information",
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
              Container(
                height: size.height * 0.765,
                width: size.width * 0.875,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 248),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: size.width * 0.05,
                    left: size.width * 0.05,
                    bottom: size.width * 0.075,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image(
                            height: size.width * 0.5,
                            width: size.width * 0.5,
                            image: AssetImage('lib/imgs/tuna.png'),
                          ),
                          SizedBox(
                            width: size.width * 0.7,
                            child: Center(
                              child: SingleChildScrollView(
                                reverse: false,
                                clipBehavior: Clip.antiAlias,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  widget.name,
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
                                      fontSize: size.height * 0.045,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Listing ID ',
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.0185,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                widget.listingID,
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.0185,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1.2,
                            color: Color.fromARGB(255, 238, 196, 79),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.01,
                            ),
                            child: SizedBox(
                              height: size.height * 0.27,
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'Current Price',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.3,
                                        child: SingleChildScrollView(
                                          reverse: true,
                                          clipBehavior: Clip.antiAlias,
                                          physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          child: SelectableText(
                                            widget.currentPrice,
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 109, 87),
                                                fontSize: size.height * 0.022,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'Increment Price',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.3,
                                        child: SingleChildScrollView(
                                          reverse: true,
                                          clipBehavior: Clip.antiAlias,
                                          physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          child: SelectableText(
                                            widget.incrementPrice,
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 109, 87),
                                                fontSize: size.height * 0.022,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'Buy Now',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.3,
                                        child: SingleChildScrollView(
                                          reverse: true,
                                          clipBehavior: Clip.antiAlias,
                                          physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          child: SelectableText(
                                            widget.buyNowPrice,
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 109, 87),
                                                fontSize: size.height * 0.022,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'From',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.4,
                                        child: SingleChildScrollView(
                                          reverse: false,
                                          clipBehavior: Clip.antiAlias,
                                          physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          child: SelectableText(
                                            widget.placeOrigin,
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 109, 87),
                                                fontSize: size.height * 0.022,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'Grade',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.grade,
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 66, 109, 87),
                                            fontSize: size.height * 0.022,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'Weight',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.3,
                                        child: SingleChildScrollView(
                                          reverse: false,
                                          clipBehavior: Clip.antiAlias,
                                          physics: BouncingScrollPhysics(),
                                          scrollDirection: Axis.horizontal,
                                          child: SelectableText(
                                            widget.weight,
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 109, 87),
                                                fontSize: size.height * 0.022,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'Status Auction',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (widget.status == true) ...[
                                        Row(
                                          children: [
                                            Image(
                                              height: size.width * 0.06,
                                              width: size.width * 0.06,
                                              image: AssetImage(
                                                  'lib/imgs/check.png'),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.0225,
                                            ),
                                            Text(
                                              'Open',
                                              style: GoogleFonts.lexend(
                                                textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 66, 109, 87),
                                                  fontSize: size.height * 0.022,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ] else ...[
                                        Row(
                                          children: [
                                            Image(
                                              height: size.width * 0.06,
                                              width: size.width * 0.06,
                                              image: AssetImage(
                                                  'lib/imgs/remove.png'),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.0225,
                                            ),
                                            Text(
                                              'Close',
                                              style: GoogleFonts.lexend(
                                                textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 66, 109, 87),
                                                  fontSize: size.height * 0.022,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: size.height * 0.005),
                                        child: Text(
                                          'End at',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: size.height * 0.025,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.endAt,
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 66, 109, 87),
                                            fontSize: size.height * 0.022,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.005,
                                  ),
                                  Divider(
                                    thickness: 1.2,
                                    color: Color.fromARGB(255, 238, 227, 79),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.0125,
                          ),
                        ],
                      ),
                      if (widget.status == true) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.065,
                                width: size.width * 0.375,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 204, 88),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Buy Now",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.0235,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MakeABid(
                                        currentPrice: widget.currentPrice,
                                        incrementPrice: widget.incrementPrice),
                                  ),
                                );
                              },
                              child: Container(
                                height: size.height * 0.065,
                                width: size.width * 0.375,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "Offer Bid",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.0235,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ] else ...[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CloseAuction(
                                    currentPrice: widget.currentPrice,
                                    name: widget.name),
                              ),
                            );
                          },
                          child: Container(
                            height: size.height * 0.065,
                            width: size.width * 1,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 66, 109, 87),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Close Auction",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.024,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
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
