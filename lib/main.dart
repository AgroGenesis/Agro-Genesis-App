import 'package:agrogenesis/app/app_theme.dart';
import 'package:agrogenesis/views/home/home_screen.dart';
import 'package:agrogenesis/views/onborading/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/onborading/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agro-Genesis',
      debugShowCheckedModeBanner: false,
      theme: appTheme.copyWith(
          textTheme: GoogleFonts.dmSansTextTheme(
        Theme.of(context).textTheme,
      )),
      home: const SplashScreen(),
    );
  }
}
