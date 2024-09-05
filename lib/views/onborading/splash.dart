import 'package:agrogenesis/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const OnboardingScreens()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/onboarding/splash.jpg'))),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 120.0).copyWith(bottom: 0),
            child: const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Agro Genesis',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: greenColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
