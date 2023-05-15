// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/notifications/success_close.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloseAuction extends StatefulWidget {
  final String name;
  final String currentPrice;

  const CloseAuction(
      {super.key, required this.currentPrice, required this.name});

  @override
  State<CloseAuction> createState() => _CloseAuctionState();
}

class _CloseAuctionState extends State<CloseAuction> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessClose(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    image: AssetImage('lib/imgs/man.png'),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Text(
                    "Close Auction & Delivery",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.023,
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
                height: size.height * 0.75,
                width: size.width * 0.875,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 248),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.02,
                    right: size.width * 0.06,
                    left: size.width * 0.06,
                    bottom: size.height * 0.035,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(
                                height: size.width * 0.28,
                                width: size.width * 0.28,
                                image: AssetImage('lib/imgs/tuna.png'),
                              ),
                              SizedBox(
                                width: size.width * 0.375,
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
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: size.height * 0.0375,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.025,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: size.height * 0.005),
                                child: Text(
                                  'Final Price',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
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
                                        color: Color.fromARGB(255, 66, 109, 87),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: size.height * 0.005),
                                child: Text(
                                  'Buyer Address',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: Color.fromARGB(255, 66, 109, 87),
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
                                    '0xE86E3717254968Df90B64612e423A00eAEF4b36d',
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mailing Address',
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.025,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.015,
                              ),
                              Text(
                                '61 Daehak-ro, Gumi-si, Gyeongsangbuk-do, South Korea',
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.0185,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Recheck!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: size.height * 0.0215,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.0075,
                          ),
                          Text(
                            "Always recheck your mail address before delivery. After proceed to complete the transaction, NFT will be sent to Buyer and the money will be sent to Seller",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: size.height * 0.015,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.0225,
                          ),
                          Text(
                            "Proceed to Continue",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: size.height * 0.015,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.016,
                          ),
                          GestureDetector(
                            onTap: () {
                              _isLoading ? null : _onSubmit();
                            },
                            child: Container(
                              height: size.height * 0.0645,
                              width: size.width * 0.875,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 66, 109, 87),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: _isLoading
                                    ? Container(
                                        width: 24,
                                        height: 24,
                                        padding: const EdgeInsets.all(2.0),
                                        child: const CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 3,
                                        ),
                                      )
                                    : Text(
                                        "Proceed Delivery",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.height * 0.0235,
                                            fontWeight: FontWeight.w700,
                                          ),
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
            ],
          ),
        ),
      ),
    );
  }
}
