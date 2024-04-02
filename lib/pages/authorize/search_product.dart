// ignore_for_file: prefer_const_constructors

import 'package:coral_ui/pages/authorize/authorize_product.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AuthorizeProduct(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 6.w,
                  ),
                  Image(
                    height: 14.w,
                    width: 14.w,
                    image: const AssetImage('lib/imgs/back.png'),
                    color: const Color.fromARGB(255, 66, 109, 87),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image(
                    height: 22.w,
                    width: 22.w,
                    image: const AssetImage('lib/imgs/fish3.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Authorize Product",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 66, 109, 87),
                        fontSize: 15.fs,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 372.h,
                    width: 320.w,
                    decoration: const BoxDecoration(
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          Column(
                            children: [
                              Center(
                                child: Container(
                                  height: 54.h,
                                  width: 108.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'lib/imgs/LogoCoral4.png'),
                                        fit: BoxFit.scaleDown),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " Listing ID of Fishes",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 13.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Container(
                                    height: 40.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 252, 250, 237),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 3.h,
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 30.h,
                                            width: 320.w,
                                            child: TextField(
                                              cursorColor: Color.fromARGB(
                                                  255, 34, 96, 12),
                                              style: GoogleFonts.montserrat(
                                                textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 66, 109, 87),
                                                  fontSize: 12.fs,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              decoration: InputDecoration(
                                                isDense: true,
                                                border: InputBorder.none,
                                                hintText: 'Insert Here',
                                                hintStyle: TextStyle(
                                                  fontSize: 12.fs,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      92, 34, 96, 12),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.h,
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
                                      Text(
                                        "Latest Listing ID",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 66, 109, 87),
                                            fontSize: 12.fs,
                                            fontWeight: FontWeight.w800,
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
                                          child: SelectableText(
                                            '0001',
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 66, 109, 87),
                                                fontSize: 12.fs,
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
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            children: [
                              Text(
                                'Always Check!',
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 14.fs,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                "Always check the legitimation of fish quality that stated on its information with the real fish condition before approve to sell and deliver",
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
                                height: 4.h,
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
                                "Search",
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
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
