import 'package:agrogenesis/app/app_theme.dart';
import 'package:agrogenesis/models/fertilizer.dart';
import 'package:agrogenesis/models/seeds.dart';
import 'package:agrogenesis/views/crop_advisory/crop_advisory.dart';
import 'package:agrogenesis/views/crop_health/crop_health.dart';
import 'package:agrogenesis/views/crop_yield/crop_yield_prediction.dart';
import 'package:agrogenesis/views/fertilizer/fertilizer_screen.dart';
import 'package:agrogenesis/views/seeds/seeds_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/function_button.dart';
import 'widgets/search_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text('Hi Shyam!', style: TextStyle(fontSize: 18)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const SearchTextField(
              hintText: 'Search..',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
                    .copyWith(top: 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          greenColor,
                          greenColor.withOpacity(0.4),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(2, 3))
                      ]),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            height: 150,
                            width: 140,
                            image: AssetImage('assets/images/small_rain.png'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rain Showers',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '25°',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 42,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.4,
                mainAxisSpacing: 16,
                crossAxisSpacing: 10,
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FunctionButton(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CropYieldPrediction())),
                      name: 'Crop Yield',
                      icon: 'assets/icons/Crop_Yield.png'),
                  FunctionButton(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CropHealthScreen())),
                      name: 'Crop Analysis',
                      icon: 'assets/icons/Crop_Analysis.png'),
                  FunctionButton(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CropAdvisoryScreen())),
                      name: 'Crop Advisory',
                      icon: 'assets/icons/Crop_Advisor.png'),
                  FunctionButton(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SeedsScreen())),
                      name: 'Seeds services',
                      icon: 'assets/icons/Seeds.png'),
                  FunctionButton(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FertilizerScreen())),
                      name: 'Fertilizers Services',
                      icon: 'assets/icons/Pestisides.png'),
                  const FunctionButton(
                      name: 'Farming Services',
                      icon: 'assets/icons/farming_services.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fertilizer Services',
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FertilizerScreen()));
                      },
                      child: const Text('See All'))
                ],
              ),
              SizedBox(
                height: 240,
                child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: fertilizers.length,
                    itemBuilder: (context, index) {
                      return FertilizerCard(fertilizer: fertilizers[index]);
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Seeds Services',
                    style: TextStyle(
                        color: greenColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SeedsScreen()));
                      },
                      child: const Text('See All'))
                ],
              ),
              SizedBox(
                height: 240,
                child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: seedsList.length,
                    itemBuilder: (context, index) {
                      return SeedCard(seeds: seedsList[index]);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
