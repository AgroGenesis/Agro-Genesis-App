import 'package:agrogenesis/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _pageController = PageController();
  bool onlastPage = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                onlastPage = (value == 2);
              });
            },
            children: <Widget>[
              OnboardingScreen(
                title: 'Track Crop Yields Easily',
                imagePath: 'assets/onboarding/crop_yield.json',
                buttontext: 'Next',
                description:
                    'Check how much your crops will produce quickly and easily.',
                onNextPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                imageType: 'lottie',
              ),
              OnboardingScreen(
                title: 'Rent Farming Tools Quickly',
                imagePath: 'assets/onboarding/farmimg_tools.json',
                buttontext: 'Next',
                description:
                    'Find and book the tools you need for farming, right away.',
                onNextPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                imageType: 'lottie',
              ),
              OnboardingScreen(
                title: 'Find Seeds & Fertilizers',
                imagePath: 'assets/onboarding/seeds_fertilizers.png',
                description:
                    'Browse and buy seeds and fertilizers from trusted providers based on reviews.',
                onNextPressed: () {},
                buttontext: 'Get Started',
                imageType: 'png',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: !onlastPage
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            _pageController.jumpToPage(3);
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                color: greenColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                      SmoothPageIndicator(
                          onDotClicked: (index) {
                            _pageController.jumpToPage(index);
                          },
                          controller: _pageController,
                          count: 3),
                      TextButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease);
                          },
                          child: const Text(
                            "Next",
                            style: TextStyle(
                                color: greenColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greenColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final Function onNextPressed;
  final String buttontext;
  final String imageType;

  const OnboardingScreen(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.description,
      required this.onNextPressed,
      required this.buttontext,
      required this.imageType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          imageType == 'lottie'
              ? Lottie.asset(imagePath, height: 400)
              : SizedBox(
                  child: Image.asset(
                    imagePath,
                    height: 150,
                  ),
                ),
          if (imageType != 'lottie')
            const SizedBox(
              height: 100,
            ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
