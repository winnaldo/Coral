// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:coral_ui/utils/list_fish.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmedFish extends StatefulWidget {
  const FarmedFish({super.key});

  @override
  State<FarmedFish> createState() => _FarmedFishState();
}

class _FarmedFishState extends State<FarmedFish> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // screen dimensions
    bool isMobile = size.width <= 768;
    bool isTablet = size.width > 768 && size.width <= 992;
    bool isDesktop = size.width >= 992;

    return Scaffold(
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
                    image: AssetImage('lib/imgs/pond.png'),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Text(
                    "Farmed Fish",
                    style: GoogleFonts.lexend(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 109, 87),
                        fontSize: size.height * 0.0285,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Expanded(
                child: GridView.count(
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  mainAxisSpacing: size.height * 0.02,
                  crossAxisSpacing: size.width * 0.03,
                  crossAxisCount: 2,
                  childAspectRatio: 0.725,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
