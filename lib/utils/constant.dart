// ignore_for_file: camel_case_types, constant_identifier_names
import 'package:flutter/material.dart';

// CONSTANTS FOR USER MANAGEMENT
enum authorizedTo {
  SELLER,
  PRODUCT,
  DELIVER,
}

enum changeTo {
  EMAIL,
  ADDRESS,
}

enum registerAs {
  SELLER,
  BUYER,
}

enum loginAs {
  SELLER,
  BUYER,
  AUTHORITY,
}

class LoginProvider with ChangeNotifier {
  loginAs? _savedLoginAs;

  loginAs? get savedLoginAs => _savedLoginAs;

  void setSavedLoginAs(loginAs loginAs) {
    _savedLoginAs = loginAs;
    notifyListeners();
  }
}

// CONSTANTS FOR FISH ORDER MANAGEMENT
enum StatusType {
  OPEN,
  CLOSED,
  BUYNOW,
  WAITING,
  PREPARE,
  ENROUTE,
  DELIVERED,
  FINISH,
}

final statusString = {
  StatusType.OPEN: 'Open',
  StatusType.CLOSED: 'Closed',
  StatusType.BUYNOW: 'Buy Now',
  StatusType.WAITING: 'Waiting for Authentication',
  StatusType.PREPARE: 'Prepare for Delivery',
  StatusType.ENROUTE: 'En-route',
  StatusType.DELIVERED: 'Delivered',
  StatusType.FINISH: 'Finished',
};

final statusIcon = {
  StatusType.OPEN: 'lib/imgs/check.png',
  StatusType.CLOSED: 'lib/imgs/remove.png',
  StatusType.BUYNOW: 'lib/imgs/remove.png',
  StatusType.WAITING: 'lib/imgs/load.png',
  StatusType.PREPARE: 'lib/imgs/load.png',
  StatusType.ENROUTE: 'lib/imgs/location.png',
  StatusType.DELIVERED: 'lib/imgs/check.png',
  StatusType.FINISH: 'lib/imgs/check.png',
};
