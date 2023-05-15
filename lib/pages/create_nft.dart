// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/pages/homepage.dart';
import 'package:coral_ui/pages/navigation.dart';
import 'package:coral_ui/pages/notifications/success_nft.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNFT extends StatefulWidget {
  const CreateNFT({super.key});

  @override
  State<CreateNFT> createState() => _CreateNFTState();
}

class _CreateNFTState extends State<CreateNFT> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessNFT(),
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
            right: size.width * 0.04,
            left: size.width * 0.04,
            bottom: size.width * 0.04,
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
                    image: AssetImage('lib/imgs/add2.png'),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Text(
                    "Create a Sale",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.0315,
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
                height: size.height * 0.7,
                width: size.width * 0.875,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 253, 248),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    right: size.width * 0.075,
                    left: size.width * 0.075,
                    bottom: size.width * 0.075,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image(
                            height: size.width * 0.29,
                            width: size.width * 0.29,
                            image: AssetImage('lib/imgs/coin.png'),
                          ),
                          SizedBox(
                            height: size.height * 0.025,
                          ),
                          Text(
                            "Generate your NFT!",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: size.height * 0.0235,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Text(
                            "Every product that listed on Coral is highly protected and certified for its information using NFT",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: size.height * 0.016,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Text(
                            "Before create your sale, you have to create NFT first, Proceed to Continue",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: size.height * 0.016,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                " IPFS-URI",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.0235,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.015,
                              ),
                              Text(
                                "(Optional)",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: size.height * 0.017,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.0075,
                          ),
                          Container(
                            height: size.height * 0.15,
                            width: size.width * 1,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 250, 237),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.width * 0.01,
                                  horizontal: size.width * 0.035),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * 0.135,
                                    width: size.width * 1,
                                    child: TextFormField(
                                      expands: true,
                                      maxLines: null,
                                      cursorColor:
                                          Color.fromARGB(255, 34, 96, 12),
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintText: 'Insert Here',
                                        hintStyle: TextStyle(
                                          fontSize: size.height * 0.0185,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(92, 34, 96, 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.0125,
                          ),
                          GestureDetector(
                            onTap: () {
                              _isLoading ? null : _onSubmit();
                            },
                            child: Container(
                              height: size.height * 0.0645,
                              width: size.width * 1,
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
                                        "Generate",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.height * 0.0235,
                                            fontWeight: FontWeight.w600,
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
