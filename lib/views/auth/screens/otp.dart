import 'package:agrogenesis/app/app_theme.dart';
import 'package:agrogenesis/views/home/home_screen.dart';
import 'package:agrogenesis/views/home/screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
        backgroundColor: const Color(0xFF4CAF50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Enter the OTP sent to your phone',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              borderColor: const Color(0xFF4CAF50),
              showFieldAsBox: true,
              fieldWidth: 40,
              borderRadius: BorderRadius.circular(15),
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                print('OTP Entered: $verificationCode');
              },
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BottomNavBar(),
                  ),
                );
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
                'Verify',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: greenColor,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
