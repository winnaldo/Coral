// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryProgress extends StatelessWidget {
  const DeliveryProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Preparing(),
        Enroute(),
        Delivered(),
        Completed(),
      ],
    );
  }
}

class Preparing extends StatelessWidget {
  const Preparing({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 52.w,
          width: 52.w,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 95, 212, 177),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 24.w,
                width: 24.w,
                image: const AssetImage('lib/imgs/delivery-box.png'),
                color: Color.fromARGB(255, 252, 250, 237),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Preparing",
                style: GoogleFonts.lexend(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 252, 250, 237),
                    fontSize: 5.fs,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Enroute extends StatelessWidget {
  const Enroute({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 3,
          width: 20.w,
          color: Color.fromARGB(255, 252, 250, 237),
        ),
        Container(
          height: 52.w,
          width: 52.w,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 252, 250, 237),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 24.w,
                width: 24.w,
                image: const AssetImage('lib/imgs/delivery-car.png'),
                color: const Color.fromARGB(255, 66, 109, 87),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "En-Route",
                style: GoogleFonts.lexend(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 66, 109, 87),
                    fontSize: 5.fs,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Delivered extends StatelessWidget {
  const Delivered({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 3,
          width: 20.w,
          color: Color.fromARGB(255, 252, 250, 237),
        ),
        Container(
          height: 52.w,
          width: 52.w,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 252, 250, 237),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 24.w,
                width: 24.w,
                image: const AssetImage('lib/imgs/delivery-receive.png'),
                color: const Color.fromARGB(255, 66, 109, 87),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Delivered",
                style: GoogleFonts.lexend(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 66, 109, 87),
                    fontSize: 5.fs,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ), // Replace with your image
        ),
      ],
    );
  }
}

class Completed extends StatelessWidget {
  const Completed({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 3,
          width: 20.w,
          color: Color.fromARGB(255, 252, 250, 237),
        ),
        Container(
          height: 52.w,
          width: 52.w,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 252, 250, 237),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: 24.w,
                width: 24.w,
                image: const AssetImage('lib/imgs/delivery-done.png'),
                color: const Color.fromARGB(255, 66, 109, 87),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Completed",
                style: GoogleFonts.lexend(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 66, 109, 87),
                    fontSize: 5.fs,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ), // Replace with your image
        ),
      ],
    );
  }
}
