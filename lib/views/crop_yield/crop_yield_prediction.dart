import 'package:agrogenesis/providers/crop_yield_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/location.dart';
import 'widgets/range_text_field.dart';
import 'widgets/seasons_drop_down.dart';
import 'widgets/text_input.dart';

class CropYieldPrediction extends StatelessWidget {
  const CropYieldPrediction({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CropYieldProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Crop Yeild Prediction'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LocationSelection(
                  provider: provider,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RangeTextField(
                      onChanged: (val) => provider.setNValue(int.tryParse(val)),
                      label: 'N (mg/Kg)',
                      min: 0,
                      max: 200,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RangeTextField(
                      onChanged: (val) => provider.setPValue(int.tryParse(val)),
                      label: 'P (mg/Kg)',
                      min: 0,
                      max: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RangeTextField(
                      onChanged: (val) => provider.setKValue(int.tryParse(val)),
                      label: 'K (mg/Kg)',
                      max: 150,
                      min: 0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextInput(
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        label: 'PH Value',
                        hintText: 'Enter ph Value',
                        onChanged: (val) =>
                            provider.setphValue(double.tryParse(val) ?? 6.5),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SeasonDropdown(provider: provider),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RangeTextField(
                      onChanged: (val) =>
                          provider.setTemp(double.tryParse(val) ?? 0),
                      label: 'Temp(°C)',
                      min: 0,
                      max: 200,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RangeTextField(
                      onChanged: (val) =>
                          provider.setHumidity(double.tryParse(val) ?? 0),
                      label: 'Humidity(%)',
                      min: 0,
                      max: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RangeTextField(
                      onChanged: (val) =>
                          provider.setRainfall(double.tryParse(val) ?? 0),
                      label: 'RainFall(mm)',
                      max: 150,
                      min: 0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextInput(
                    keyboardType: TextInputType.name,
                    label: 'Crop Name',
                    hintText: 'Enter Crop Name',
                    onChanged: (val) => provider.setCropName(val)),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!provider.nValue.isNaN) {
                      provider.remCrop();
                      provider.predictCrop();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Predict',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (provider.isLoading)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
                if (provider.recommendationResult != '' &&
                    provider.isLoading == false)
                  Text(
                    textAlign: TextAlign.center,
                    'Based on the provided data Suitable Crop is ${provider.recommendationResult}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                const SizedBox(
                  height: 5,
                ),
                if (provider.recommendationResult != provider.cropName)
                  const Text(
                    textAlign: TextAlign.center,
                    'The conditions aren\'t ideal for your crop. Try improving soil fertility or switch to a recommended crop.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
              ],
            ),
          ),
        ),
      );
    });
  }
}
