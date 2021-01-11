import 'package:flutter/material.dart';
import 'package:modern_living/Screens/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingScreen(),
    );
  }
}
