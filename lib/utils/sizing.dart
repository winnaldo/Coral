import 'package:flutter/material.dart';

class Sizing {
  static late Size size;

  static setInitMediaQuerySize(BuildContext context) {
    size = MediaQuery.of(context).size;
  }

  static double getHeight(num input) =>
      size.height - (size.height - 1.25 * input);

  static double getWidth(num input) => size.width - (size.width - 1.15 * input);

  static double getFontSize(num input) =>
      size.width - (size.width - 1.165 * input);
}

extension SizingExtension on num {
  double get h => Sizing.getHeight(this);

  double get w => Sizing.getWidth(this);

  double get fs => Sizing.getFontSize(this);
}
