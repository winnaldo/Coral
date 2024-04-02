// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:coral_ui/pages/notifications/success_register.dart';
import 'package:coral_ui/utils/constant.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterSeller extends StatefulWidget {
  const RegisterSeller({super.key});

  @override
  State<RegisterSeller> createState() => _RegisterSellerState();
}

class _RegisterSellerState extends State<RegisterSeller> {
  final List<Map> _sellerType = [
    {
      'type': 'Fish Farmer',
      'subtype': '(Farmed Fish)',
      'icon': 'lib/imgs/beach2.png',
    },
    {
      'type': 'Fish Gatherer',
      'subtype': '(Wild-Caught Fish)',
      'icon': 'lib/imgs/pond.png',
    },
  ];
  String? _selected;
  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessRegister(
              registerAs: registerAs.SELLER,
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
      body: SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/imgs/beach.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4,
                    sigmaY: 4,
                  ),
                  child: Container(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 24.h,
                  right: 12.w,
                  left: 12.w,
                  bottom: 18.h,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                      ),
                      child: Row(
                        children: [
                          Image(
                            height: 14.w,
                            width: 14.w,
                            image: AssetImage('lib/imgs/back.png'),
                            color: Color.fromARGB(255, 252, 250, 237),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Back",
                            style: GoogleFonts.lexend(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 252, 250, 237),
                                fontSize: 15.fs,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      height: 474.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          top: 14.h,
                          bottom: 14.h,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView(
                                physics: BouncingScrollPhysics(),
                                children: [
                                  Container(
                                    height: 64.h,
                                    width: 158.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/imgs/registrationseller.png'),
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Container(
                                    height: 60.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 252, 250, 237),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5.h,
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Wallet Address",
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 34, 96, 12),
                                                  fontSize: 10.fs,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          SizedBox(
                                            height: 35.h,
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
                                                  fontSize: 11.fs,
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
                                    height: 6.h,
                                  ),
                                  Container(
                                    height: 60.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 252, 250, 237),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5.h,
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Type of Seller",
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 34, 96, 12),
                                                  fontSize: 10.fs,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          SizedBox(
                                            height: 35.h,
                                            width: 320.w,
                                            child: DropdownButtonHideUnderline(
                                              child: ButtonTheme(
                                                alignedDropdown: true,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  isDense: true,
                                                  hint: Text(
                                                    'Select Here',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      textStyle: TextStyle(
                                                        color: Color.fromARGB(
                                                            92, 34, 96, 12),
                                                        fontSize: 11.fs,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  value: _selected,
                                                  onChanged: (newValue) {
                                                    setState(
                                                      () {
                                                        _selected = newValue!;
                                                      },
                                                    );
                                                  },
                                                  items: _sellerType.map(
                                                    (sellerItem) {
                                                      return DropdownMenuItem(
                                                        value:
                                                            sellerItem['type']
                                                                .toString(),
                                                        child: Row(
                                                          children: [
                                                            Image(
                                                              height: 16.w,
                                                              width: 16.w,
                                                              image: AssetImage(
                                                                sellerItem[
                                                                    'icon'],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 8.w,
                                                            ),
                                                            Text(
                                                              sellerItem[
                                                                  'type'],
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                textStyle:
                                                                    TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          66,
                                                                          109,
                                                                          87),
                                                                  fontSize:
                                                                      11.fs,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 3.w,
                                                            ),
                                                            Text(
                                                              sellerItem[
                                                                  'subtype'],
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                textStyle:
                                                                    TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          66,
                                                                          109,
                                                                          87),
                                                                  fontSize:
                                                                      9.fs,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ).toList(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    height: 150.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 252, 250, 237),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5.h,
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Mailing Address",
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 34, 96, 12),
                                                  fontSize: 10.fs,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          SizedBox(
                                            height: 120.h,
                                            width: 320.w,
                                            child: TextFormField(
                                              expands: true,
                                              maxLines: null,
                                              cursorColor: Color.fromARGB(
                                                  255, 34, 96, 12),
                                              decoration: InputDecoration(
                                                isDense: true,
                                                border: InputBorder.none,
                                                hintText: 'Insert Here',
                                                hintStyle: TextStyle(
                                                  fontSize: 11.fs,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromARGB(
                                                      92, 34, 96, 12),
                                                ),
                                              ),
                                              style: GoogleFonts.montserrat(
                                                textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 66, 109, 87),
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
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    height: 60.h,
                                    width: 320.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 252, 250, 237),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(12),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5.h,
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Email",
                                            style: GoogleFonts.lexend(
                                              textStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 34, 96, 12),
                                                  fontSize: 10.fs,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          SizedBox(
                                            height: 35.h,
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
                                                  fontSize: 11.fs,
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                              "Always recheck your data before proceeding to continue",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 66, 109, 87),
                                  fontSize: 8.fs,
                                  fontWeight: FontWeight.w500,
                                  height: 1.35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
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
                                          child:
                                              const CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 3,
                                          ),
                                        )
                                      : Text(
                                          "Create",
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
