import 'package:flutter/material.dart';
import 'package:csc_picker/csc_picker.dart';

class LocationSelection extends StatefulWidget {
  const LocationSelection({super.key});

  @override
  State<LocationSelection> createState() => _LocationSelectionState();
}

class _LocationSelectionState extends State<LocationSelection> {
  String? countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  String? address = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // height: 600,
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CSCPicker(
          showStates: true,
          defaultCountry: CscCountry.India,
          showCities: true,
          flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
          dropdownDecoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300, width: 1)),
          disabledDropdownDecoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: Colors.grey.shade300,
              border: Border.all(color: Colors.grey.shade300, width: 1)),
          selectedItemStyle: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          dropdownHeadingStyle: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
          dropdownItemStyle: const TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          dropdownDialogRadius: 10.0,
          searchBarRadius: 10.0,
          onCountryChanged: (value) {
            setState(() {
              countryValue = value;
            });
          },
          onStateChanged: (value) {
            setState(() {
              stateValue = value;
            });
          },
          onCityChanged: (value) {
            setState(() {
              cityValue = value;
            });
          },
        ),
        TextButton(
            onPressed: () {
              setState(() {
                address = "$cityValue, $stateValue, $countryValue";
              });
            },
            child: const Text("Print Data")),
        Text(address ?? '')
      ],
    ));
  }
}
