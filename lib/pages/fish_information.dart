// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coral_ui/pages/buy_part/buy_now.dart';
import 'package:coral_ui/pages/close_auction.dart';
import 'package:coral_ui/pages/buy_part/make_a_bid.dart';
import 'package:coral_ui/utils/sizing.dart';
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
    return Scaffold(
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
                    image: AssetImage('lib/imgs/back.png'),
                    color: Color.fromARGB(255, 66, 109, 87),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image(
                    height: 22.w,
                    width: 22.w,
                    image: AssetImage('lib/imgs/fish2.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Fish Information",
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
                height: 12.h,
              ),
              Container(
                height: 496.h,
                width: 320.w,
                decoration: BoxDecoration(
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
                      Column(
                        children: [
                          Container(
                            height: 286.h,
                            width: 286.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Center(
                              child: Image(
                                height: 128.w,
                                width: 128.w,
                                image: AssetImage('lib/imgs/tuna.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          SizedBox(
                            width: 286.w,
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
                                      fontSize: 22.fs,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Listing ID ',
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 11.fs,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                widget.listingID,
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 11.fs,
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
                            height: 3.h,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'Current Price',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 128.w,
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
                                            fontSize: 13.fs,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'Increment Price',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 128.w,
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
                                            fontSize: 13.fs,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'Buy Now',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 128.w,
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
                                            fontSize: 13.fs,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'From',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 128.w,
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
                                            fontSize: 13.fs,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'Grade',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    widget.grade,
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 13.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'Weight',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 128.w,
                                    child: SingleChildScrollView(
                                      reverse: true,
                                      clipBehavior: Clip.antiAlias,
                                      physics: BouncingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      child: SelectableText(
                                        widget.weight,
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 66, 109, 87),
                                            fontSize: 13.fs,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'Status Auction',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (widget.status == true) ...[
                                    Row(
                                      children: [
                                        Image(
                                          height: 16.w,
                                          width: 16.w,
                                          image:
                                              AssetImage('lib/imgs/check.png'),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          'Open',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: 13.fs,
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
                                          height: 16.w,
                                          width: 16.w,
                                          image:
                                              AssetImage('lib/imgs/remove.png'),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          'Closed',
                                          style: GoogleFonts.lexend(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: 13.fs,
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
                                height: 1.h,
                              ),
                              Divider(
                                thickness: 1.2,
                                color: Color.fromARGB(255, 238, 227, 79),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1.h,
                                    ),
                                    child: Text(
                                      'End at',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    widget.endAt,
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 13.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
              if (widget.status == true) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BuyNow(
                              buyNowPrice: widget.buyNowPrice,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 40.h,
                        width: 153.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 204, 88),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14.w,
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
                        height: 40.h,
                        width: 153.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 66, 109, 87),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Offer Bid",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14.fs,
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
                    height: 40.h,
                    width: 320.w,
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
                            fontSize: 14.fs,
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
    );
  }
}
