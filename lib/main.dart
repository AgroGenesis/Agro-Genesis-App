import 'package:agrogenesis/app/app_providers.dart';
import 'package:agrogenesis/app/app_theme.dart';
import 'package:agrogenesis/firebase_options.dart';
import 'package:agrogenesis/views/home/home_screen.dart';
import 'package:agrogenesis/views/onborading/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'views/onborading/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: MaterialApp(
        title: 'Agro-Genesis',
        debugShowCheckedModeBanner: false,
        theme: appTheme.copyWith(
            textTheme: GoogleFonts.dmSansTextTheme(
          Theme.of(context).textTheme,
        )),
        home: const SplashScreen(),
      ),
    );
  }
}
