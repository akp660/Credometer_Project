import 'package:flutter/material.dart';
import 'onboarding_screen_4.dart'; // Import the next screen

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Assuming a white background
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 100.0), // Increased bottom padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Skip button
            Padding(
              padding: const EdgeInsets.only(top: 50.0), // Added top padding
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const OnboardingScreen4()),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.blueAccent, // Assuming blue color from the image
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.blueAccent, // Assuming blue color
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Placeholder for Image
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/onboarding_3_image.png', // Replace with actual image
                  height: 250.0, // Maintain placeholder height
                  fit: BoxFit.contain, // Ensure the image fits within the bounds
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Text content
            const Column(
              children: [
                Text(
                  'Customize. Pay. Track.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Assuming black text color
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '''Everything you need for stress-free
school payments.''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey, // Assuming grey text color
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Navigation dots and Next button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Navigation dots (simplified for now)
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Inactive dot color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 24,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent, // Active dot color
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
                // Next Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OnboardingScreen4()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2C42A7), // Assuming dark blue color from image
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 