import 'package:agrogenesis/views/auth/screens/signin.dart';
import 'package:flutter/material.dart';

import '../widgets/text_input.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4CAF50),
              ),
            ),
            const SizedBox(height: 20),

            const TextInputField(
              iconData: Icons.person,
              label: 'Name',
            ),
            const SizedBox(height: 20),

            const TextInputField(
              iconData: Icons.phone,
              label: 'Phone Number',
            ),

            const SizedBox(height: 20),

            const TextInputField(
              iconData: Icons.lock,
              label: 'Password',
            ),

            const SizedBox(height: 20),

            const TextInputField(
              iconData: Icons.lock,
              label: 'Re-enter Password',
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // const SizedBox(height: 20),

            // Bottom Image (Farmer)
            // Expanded(
            //   child: Align(
            //     alignment: Alignment.bottomCenter,
            //     child: Image.asset(
            //         'assets/farmer_image.png'), // Replace with actual image path
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signinscreen()));
                  },
                  child: const Text(
                    'SignIn',
                    style: TextStyle(
                      color: Color(0xFF4CAF50),
                      fontWeight: FontWeight.bold,
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
