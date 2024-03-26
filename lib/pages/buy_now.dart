import 'package:coral_ui/pages/notifications/success_bid.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNow extends StatefulWidget {
  final String buyNowPrice;

  const BuyNow({super.key, required this.buyNowPrice});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SuccessBid(),
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
                    image: const AssetImage('lib/imgs/back.png'),
                    color: const Color.fromARGB(255, 66, 109, 87),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Image(
                    height: 22.w,
                    width: 22.w,
                    image: const AssetImage('lib/imgs/cart.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Buy Now",
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
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 496.h,
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
                      Column(
                        children: [
                          Container(
                            height: 286.h,
                            width: 286.w,
                            decoration: const BoxDecoration(
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
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  'Tuna Fish',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 66, 109, 87),
                                      fontSize: 22.fs,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                                  'Buy Now Price',
                                  style: GoogleFonts.lexend(
                                    textStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 66, 109, 87),
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
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: SelectableText(
                                    widget.buyNowPrice,
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: const Color.fromARGB(
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
                          const Divider(
                            thickness: 1.2,
                            color: Color.fromARGB(255, 238, 227, 79),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Column(
                            children: [
                              Text(
                                'Using Buy Now,',
                                style: GoogleFonts.lexend(
                                  textStyle: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 14.fs,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                'You will automatically be declared as the legitimate Buyer of this fishery product',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 11.fs,
                                    fontWeight: FontWeight.w600,
                                    height: 1.35,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'Proceed to Continue',
                        style: GoogleFonts.lexend(
                          textStyle: TextStyle(
                            color: const Color.fromARGB(255, 66, 109, 87),
                            fontSize: 11.fs,
                            fontWeight: FontWeight.w800,
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
                    color: const Color.fromARGB(255, 66, 109, 87),
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
                            "Proceed Buy Now",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.fs,
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
