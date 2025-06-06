import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the login screen

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

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
                    // TODO: Implement skip functionality
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
                  'assets/images/onboarding_4_image.png', // Replace with actual image
                  height: 250.0, // Maintain placeholder height
                  fit: BoxFit.contain, // Ensure the image fits within the bounds
                ),
              ),
            ),
            const SizedBox(height: 5),
            // Text content
            const Column(
              children: [
                Text(
                  'Eduflow – Pay with Ease',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Assuming black text color
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '''Modern tools to simplify tuition payments and
maintain precise financial records.''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey, // Assuming grey text color
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Buttons
            Column(
              children: [
                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement Sign Up functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2C42A7), // Assuming dark blue color from image
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Log In Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF2C42A7), // Assuming dark blue color
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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