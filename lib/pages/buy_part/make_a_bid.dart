// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:coral_ui/pages/notifications/success_bid.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MakeABid extends StatefulWidget {
  final String currentPrice;
  final String incrementPrice;

  const MakeABid({
    super.key,
    required this.currentPrice,
    required this.incrementPrice,
  });

  @override
  State<MakeABid> createState() => _MakeABidState();
}

class _MakeABidState extends State<MakeABid> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessBid(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    image: AssetImage('lib/imgs/bid.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Make a Bid",
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
                            width: 286.w,
                            child: Center(
                              child: SingleChildScrollView(
                                reverse: false,
                                clipBehavior: Clip.antiAlias,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  'Tuna Fish',
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
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 1.h,
                            ),
                            child: Text(
                              'Current Price',
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
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
                                    color: Color.fromARGB(255, 66, 109, 87),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 1.h,
                            ),
                            child: Text(
                              'Increment Price',
                              style: GoogleFonts.lexend(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
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
                                    color: Color.fromARGB(255, 66, 109, 87),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Offer",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 13.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            height: 50.h,
                            width: 320.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 6.h,
                                horizontal: 12.w,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                    width: 220.w,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 12.fs,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      cursorColor:
                                          Color.fromARGB(255, 34, 96, 12),
                                      decoration: InputDecoration(
                                        isCollapsed: true,
                                        contentPadding: EdgeInsets.zero,
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintText: 'Insert Here',
                                        hintStyle: TextStyle(
                                          fontSize: 12.fs,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(92, 34, 96, 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "ETH",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 12.fs,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              GestureDetector(
                onTap: () {
                  _isLoading ? null : _onSubmit();
                },
                child: Container(
                  height: 40.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 109, 87),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: _isLoading
                        ? Container(
                            width: 20.w,
                            height: 20.w,
                            padding: const EdgeInsets.all(2.0),
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          )
                        : Text(
                            "Create Sale",
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
          ),
        ),
      ),
    );
  }
}
