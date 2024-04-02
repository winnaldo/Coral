// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:coral_ui/pages/notifications/success_nft.dart';
import 'package:coral_ui/utils/sizing.dart';
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
                    image: AssetImage('lib/imgs/add2.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Create a Sale",
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
                    top: 14.h,
                    right: 14.w,
                    left: 14.w,
                    bottom: 12.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 14.h,
                      ),
                      Column(
                        children: [
                          Image(
                            height: 88.w,
                            width: 88.w,
                            image: AssetImage('lib/imgs/coin.png'),
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Text(
                            "Generate your NFT!",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 15.h,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "Every product that listed on Coral is highly protected and certified for its information using NFT",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 66, 109, 87),
                                fontSize: 11.fs,
                                fontWeight: FontWeight.w500,
                                height: 1.35,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            children: [
                              Text(
                                " IPFS-URI",
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 15.fs,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            height: 100.h,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 90.h,
                                    width: 320.w,
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
                                          fontSize: 11.fs,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(92, 34, 96, 12),
                                        ),
                                      ),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 11.fs,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Before create your sale, you have to create NFT first, Proceed to Continue",
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
                            "Generate",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.fs,
                                fontWeight: FontWeight.w600,
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
