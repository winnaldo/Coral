// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:coral_ui/pages/delivery/delivery_figure/delivery_progress_item.dart';
import 'package:coral_ui/utils/constant.dart';
import 'package:coral_ui/utils/fish_information.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeliveryInformation extends StatefulWidget {
  final String name;
  final String listingID;
  final String currentPrice;
  final String incrementPrice;
  final String buyNowPrice;
  final String placeOrigin;
  final String grade;
  final String weight;
  final String endAt;
  final status;
  final String buyerName;
  final String finalPrice;
  final String address;
  final accessed;

  const DeliveryInformation({
    super.key,
    required this.name,
    required this.listingID,
    required this.currentPrice,
    required this.incrementPrice,
    required this.buyNowPrice,
    required this.placeOrigin,
    required this.grade,
    required this.weight,
    required this.endAt,
    this.status,
    required this.buyerName,
    required this.finalPrice,
    required this.address,
    this.accessed,
  });

  @override
  State<DeliveryInformation> createState() => _DeliveryInformationState();
}

class _DeliveryInformationState extends State<DeliveryInformation> {
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () {
        _isLoading = false;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);

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
                    image: const AssetImage('lib/imgs/delivery.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Delivery",
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 88.h,
                      width: 320.w,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 66, 109, 87),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.w,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DeliveryProgress(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16.h,
                              right: 14.w,
                              left: 14.w,
                              bottom: 14.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FishInformation(
                                              name: widget.name,
                                              listingID: widget.listingID,
                                              currentPrice: widget.currentPrice,
                                              incrementPrice:
                                                  widget.incrementPrice,
                                              buyNowPrice: widget.buyNowPrice,
                                              placeOrigin: widget.placeOrigin,
                                              grade: widget.grade,
                                              weight: widget.weight,
                                              status: widget.status,
                                              endAt: widget.endAt,
                                              accessed: widget.accessed)),
                                    );
                                  },
                                  child: Container(
                                    height: 64.w,
                                    width: 320.w,
                                    color: Colors.transparent,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 64.w,
                                          width: 64.w,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(12),
                                            ),
                                            color: Colors.transparent,
                                          ),
                                          child: Center(
                                            child: Image(
                                              height: 64.w,
                                              width: 64.w,
                                              image: const AssetImage(
                                                  'lib/imgs/tuna.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            physics: BouncingScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            child: Text(
                                              "Tuna Fish",
                                              style: GoogleFonts.lexend(
                                                textStyle: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 66, 109, 87),
                                                  fontSize: 16.fs,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Text(
                                  "Delivery Information",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 66, 109, 87),
                                      fontSize: 11.fs,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
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
                                        'Final Price',
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
                                    SizedBox(
                                      width: 128.w,
                                      child: SingleChildScrollView(
                                        reverse: true,
                                        clipBehavior: Clip.antiAlias,
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        child: SelectableText(
                                          "0.005 ETH",
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
                                        'Buyer Address',
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
                                    SizedBox(
                                      width: 128.w,
                                      child: SingleChildScrollView(
                                        clipBehavior: Clip.antiAlias,
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        child: Text(
                                          widget.buyerName,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mailing Address',
                                      style: GoogleFonts.lexend(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 13.fs,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      widget.address,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
                                          fontSize: 11.fs,
                                          fontWeight: FontWeight.w600,
                                          height: 1.35,
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
                                            color: Color.fromARGB(
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
                                        clipBehavior: Clip.antiAlias,
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        reverse: true,
                                        child: Row(
                                          children: [
                                            Image(
                                              height: 16.w,
                                              width: 16.w,
                                              image: AssetImage(
                                                statusIcon[widget.status]!,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            Text(
                                              statusString[widget.status]!,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                            loginProvider.savedLoginAs == loginAs.SELLER
                                ? widget.status == StatusType.PREPARE
                                    ? "Proceed En-Route"
                                    : "Send NFT"
                                : widget.status == StatusType.ENROUTE
                                    ? "Confirm Delivery"
                                    : "Waiting for Delivery",
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
