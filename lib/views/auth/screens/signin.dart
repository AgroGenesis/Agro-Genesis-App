import 'package:agrogenesis/views/auth/screens/otp.dart';
import 'package:agrogenesis/views/auth/screens/signup.dart';
import 'package:agrogenesis/views/auth/widgets/text_input.dart';
import 'package:flutter/material.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});

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

            // const TextInputField(
            //   label: 'Name',
            // ),
            // const SizedBox(height: 20),

            const TextInputField(
              iconData: Icons.phone,
              label: 'Phone Number',
            ),

            const SizedBox(height: 20),

            // const TextInputField(
            //   label: 'Password',
            // ),

            // const SizedBox(height: 20),

            // const TextInputField(
            //   label: 'Re-enter Password',
            // ),
            // const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const OtpScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50),
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Get OTP',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Bottom Image (Farmer)

            // const SizedBox(
            //   height: 30,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New User?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text(
                    'Register',
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
