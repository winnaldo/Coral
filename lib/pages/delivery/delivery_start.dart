// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/notifications/success_close.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryStart extends StatefulWidget {
  final String name;
  final String currentPrice;

  const DeliveryStart(
      {super.key, required this.currentPrice, required this.name});

  @override
  State<DeliveryStart> createState() => _DeliveryStartState();
}

class _DeliveryStartState extends State<DeliveryStart> {
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
                    image: AssetImage('lib/imgs/man.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Close Auction & Delivery",
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
                              'Final Price',
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
                              'Buyer Address',
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
                              reverse: false,
                              clipBehavior: Clip.antiAlias,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: SelectableText(
                                '0xE86E3717254968Df90B64612e423A00eAEF4b36d',
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
                            'Mailing Address',
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
                          Text(
                            '61 Daehak-ro, Gumi-si, Gyeongsangbuk-do, South Korea',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 11.fs,
                                fontWeight: FontWeight.w600,
                                height: 1.35,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Column(
                        children: [
                          Text(
                            "Recheck!",
                            textAlign: TextAlign.center,
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
                          Text(
                            "Always recheck your mail address before delivery. After proceed to complete the transaction, NFT will be sent to Buyer and the money will be sent to Seller",
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
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            "Proceed to Continue",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 11.fs,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
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
                            "Proceed Delivery",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13.fs,
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
