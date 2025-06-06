import 'package:flutter/material.dart';
import 'dart:async';
import 'onboarding_screen_2.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // Removed flutter_svg import

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C42A7), // Setting background color to 2C42A7
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min, // Center the row content
          children: [
            // Icon Image
            Image.asset(
              'assets/images/splash_screen_icon.png', // Path to your icon image
              height: 100.0, // Image size
            ),
            const SizedBox(width: 10), // Spacing between image and text
            // App name text with padding for alignment
            Padding(
              padding: const EdgeInsets.only(top: 10.0), // Add top padding to lower the text
              child: const Text(
                'eduflow',
                style: TextStyle(
                  color: Colors.white, // Text color for visibility on dark blue
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Scheherazade New', // Set font family
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}