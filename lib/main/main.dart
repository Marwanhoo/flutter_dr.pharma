import 'package:flutter/material.dart';
import 'package:flutter_dr_pharma/screens/login_screen.dart';
import 'package:flutter_dr_pharma/screens/onboarding_screen.dart';
import 'package:flutter_dr_pharma/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dr.Pharma',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
