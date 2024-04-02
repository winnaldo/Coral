import 'package:coral_ui/pages/login_part/splash_screen.dart';
import 'package:coral_ui/utils/constant.dart';
import 'package:coral_ui/utils/sizing.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Sizing.setInitMediaQuerySize(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => LoginProvider(),
        ),
      ],
      child: MediaQuery.withClampedTextScaling(
        minScaleFactor: 0.95,
        maxScaleFactor: 1.015,
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash_Screen(),
        ),
      ),
    );
  }
}
