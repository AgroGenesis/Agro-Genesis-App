import 'package:flutter/material.dart';

class NpkValues extends StatefulWidget {
  const NpkValues({super.key});

  @override
  State<NpkValues> createState() => _NpkValuesState();
}

class _NpkValuesState extends State<NpkValues> {
  // Variables to hold selected values for the dropdowns
  String? selectedNValue;
  String? selectedPValue;
  String? selectedKValue;

  // Range values for N, P, and K
  RangeValues nRange = const RangeValues(10, 50);
  RangeValues pRange = const RangeValues(10, 50);
  RangeValues kRange = const RangeValues(10, 50);

  // Function to generate dropdown options based on the selected range
  List<String> generateDropdownOptions(RangeValues range) {
    List<String> options = [];
    for (double i = range.start; i <= range.end; i += 10) {
      options.add('${i.toInt()} mg/kg');
    }
    return options;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // N RangeSlider
        Text('N Range: ${nRange.start.toInt()} - ${nRange.end.toInt()} mg/kg'),
        RangeSlider(
          values: nRange,
          min: 0,
          max: 100,
          divisions: 10,
          onChanged: (RangeValues values) {
            setState(() {
              nRange = values;
              selectedNValue = null; // Reset selection on range change
            });
          },
        ),
        const SizedBox(height: 16),
        // P RangeSlider
        Text('P Range: ${pRange.start.toInt()} - ${pRange.end.toInt()} mg/kg'),
        RangeSlider(
          values: pRange,
          min: 0,
          max: 100,
          divisions: 10,
          onChanged: (RangeValues values) {
            setState(() {
              pRange = values;
              selectedPValue = null; // Reset selection on range change
            });
          },
        ),
        const SizedBox(height: 16),
        // K RangeSlider
        Text('K Range: ${kRange.start.toInt()} - ${kRange.end.toInt()} mg/kg'),
        RangeSlider(
          values: kRange,
          min: 0,
          max: 100,
          divisions: 10,
          onChanged: (RangeValues values) {
            setState(() {
              kRange = values;
              selectedKValue = null; // Reset selection on range change
            });
          },
        ),
        const SizedBox(height: 32),
        // Dropdowns in a Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Dropdown for N value
            Expanded(
              child: DropdownButtonFormField<String>(
                value: selectedNValue,
                hint: const Text('N (mg/kg)'),
                items: generateDropdownOptions(nRange).map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedNValue = newValue;
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            // Dropdown for P value
            Expanded(
              child: DropdownButtonFormField<String>(
                value: selectedPValue,
                hint: const Text('P (mg/kg)'),
                items: generateDropdownOptions(pRange).map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedPValue = newValue;
                  });
                },
              ),
            ),
            const SizedBox(width: 8),
            // Dropdown for K value
            Expanded(
              child: DropdownButtonFormField<String>(
                value: selectedKValue,
                hint: const Text('K (mg/kg)'),
                items: generateDropdownOptions(kRange).map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedKValue = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
