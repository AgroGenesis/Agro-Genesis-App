import 'package:agrogenesis/enum/seasons.dart';
import 'package:agrogenesis/providers/crop_yield_provider.dart';
import 'package:flutter/material.dart';

class SeasonDropdown extends StatelessWidget {
  final CropYieldProvider provider;
  const SeasonDropdown({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Season>(
      hint: const Text('Select Season'),
      value: provider.selectedSeason,
      onChanged: provider.setSelectedSeason,
      items: Season.values.map((Season season) {
        return DropdownMenuItem<Season>(
          value: season,
          child: Text(season.toString()),
        );
      }).toList(),
      iconSize: 24,
      dropdownColor: Colors.white,
      style: const TextStyle(color: Colors.black, fontSize: 16),
      underline: Container(
        height: 2,
        color: Colors.blue,
      ),
    );
  }
}
