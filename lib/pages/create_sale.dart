// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields
import 'package:coral_ui/pages/notifications/success_sale.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateSale extends StatefulWidget {
  const CreateSale({super.key});

  @override
  State<CreateSale> createState() => _CreateSaleState();
}

class _CreateSaleState extends State<CreateSale> {
  String _selected1 = 'S';
  List<Map> _grades = [
    {
      'score': 'S',
    },
    {
      'score': 'A',
    },
    {
      'score': 'B',
    },
    {
      'score': 'C',
    },
  ];

  var _isLoading = false;

  void _onSubmit() {
    setState(() => _isLoading = true);
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
      () async => setState(
        () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessSale(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset: false,
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
                    height: 21.w,
                    width: 21.w,
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
                    top: 16.h,
                    right: 14.w,
                    left: 14.w,
                    bottom: 12.h,
                  ),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " NFT-ID",
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
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                  ),
                                  child: Text(
                                    "NFT-ID-0003",
                                    style: GoogleFonts.lexend(
                                      textStyle: TextStyle(
                                        color: Color.fromARGB(255, 66, 109, 87),
                                        fontSize: 12.fs,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Name of Fish",
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                    width: 320.w,
                                    child: TextField(
                                      cursorColor:
                                          Color.fromARGB(255, 34, 96, 12),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
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
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Habitat",
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
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Image(
                                        height: 22.w,
                                        width: 22.w,
                                        image:
                                            AssetImage('lib/imgs/beach2.png'),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        "Wild",
                                        style: GoogleFonts.lexend(
                                          textStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 66, 109, 87),
                                            fontSize: 12.fs,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Categorized based on your fishery business ",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 66, 109, 87),
                                    fontSize: 9.fs,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Place Origin",
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                    width: 320.w,
                                    child: TextField(
                                      cursorColor:
                                          Color.fromARGB(255, 34, 96, 12),
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 66, 109, 87),
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
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Weight",
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.h,
                                    ),
                                    child: SizedBox(
                                      height: 40.h,
                                      width: 200.w,
                                      child: TextField(
                                        cursorColor:
                                            Color.fromARGB(255, 34, 96, 12),
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
                                            color:
                                                Color.fromARGB(92, 34, 96, 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Grams",
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
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Grade",
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
                              child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton(
                                    isExpanded: true,
                                    isDense: true,
                                    value: _selected1,
                                    items: _grades.map(
                                      (grades) {
                                        return DropdownMenuItem(
                                          value: grades['score'].toString(),
                                          child: Text(
                                            grades['score'],
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 66, 109, 87),
                                              fontSize: 12.fs,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        );
                                      },
                                    ).toList(),
                                    onChanged: (String? newValue2) {
                                      setState(
                                        () {
                                          _selected1 = newValue2!;
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Auction Starting Price",
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.h,
                                    ),
                                    child: SizedBox(
                                      height: 40.h,
                                      width: 200.w,
                                      child: TextField(
                                        cursorColor:
                                            Color.fromARGB(255, 34, 96, 12),
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
                                            color:
                                                Color.fromARGB(92, 34, 96, 12),
                                          ),
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
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Increment Price",
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.h,
                                    ),
                                    child: SizedBox(
                                      height: 40.h,
                                      width: 200.w,
                                      child: TextField(
                                        cursorColor:
                                            Color.fromARGB(255, 34, 96, 12),
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
                                            color:
                                                Color.fromARGB(92, 34, 96, 12),
                                          ),
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
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Buy Now Price",
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.h,
                                    ),
                                    child: SizedBox(
                                      height: 40.h,
                                      width: 200.w,
                                      child: TextField(
                                        cursorColor:
                                            Color.fromARGB(255, 34, 96, 12),
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
                                            color:
                                                Color.fromARGB(92, 34, 96, 12),
                                          ),
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
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Duration",
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.h,
                                    ),
                                    child: SizedBox(
                                      height: 40.h,
                                      width: 200.w,
                                      child: TextField(
                                        cursorColor:
                                            Color.fromARGB(255, 34, 96, 12),
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
                                            color:
                                                Color.fromARGB(92, 34, 96, 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Seconds",
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
                          SizedBox(
                            height: 10.h,
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
