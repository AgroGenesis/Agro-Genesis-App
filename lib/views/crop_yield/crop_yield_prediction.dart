import 'package:flutter/material.dart';

import 'widgets/location.dart';
import 'widgets/npk_values.dart';

class CropYieldPrediction extends StatelessWidget {
  const CropYieldPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Yeild Prediction'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          children: [
            LocationSelection(),
            SizedBox(
              height: 15,
            ),
            NpkValues()
          ],
        ),
      ),
    );
  }
}
