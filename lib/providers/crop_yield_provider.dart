import 'dart:convert';

import 'package:agrogenesis/enum/seasons.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CropYieldProvider extends ChangeNotifier {
  int _nValue = 50;
  int _pValue = 40;
  int _kValue = 30;
  int get nValue => _nValue;
  int get pValue => _pValue;
  int get kValue => _kValue;
  double _temp = 26;
  double _humidity = 65;
  double _rainFall = 450;
  double get temp => _temp;
  double get humidity => _humidity;
  double get rainFall => _rainFall;
  String? countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  // String? address = "";
  void setNValue(int? val) {
    _nValue = val ?? 50;
    notifyListeners();
  }

  void setPValue(int? val) {
    _pValue = val ?? 40;
    notifyListeners();
  }

  void setKValue(int? val) {
    _kValue = val ?? 30;
    notifyListeners();
  }

  void setCountry(String? val) {
    countryValue = val;
    notifyListeners();
  }

  void setState(String? val) {
    stateValue = val;

    notifyListeners();
  }

  void setCity(String? val) {
    cityValue = val;
    notifyListeners();
  }

  Season? _selectedSeason;

  Season? get selectedSeason => _selectedSeason;

  void setSelectedSeason(Season? newSeason) {
    _selectedSeason = newSeason;
    notifyListeners();
  }

  double _phValue = 6.5;
  double get phValue => _phValue;
  void setphValue(double val) {
    _phValue = val;
  }

  String _cropName = '';
  String get cropName => _cropName;
  void setCropName(String val) {
    _cropName = val;
  }

  void setHumidity(double val) {
    _humidity = val;
    notifyListeners();
  }

  void setTemp(double val) {
    _temp = val;
    notifyListeners();
  }

  void setRainfall(double val) {
    _rainFall = val;
    notifyListeners();
  }

  bool isLoading = false;
  var predictionResult = '';
  Future<void> predictCrop() async {
    isLoading = true;
    notifyListeners();
    try {
      // Create request body
      Map<String, dynamic> requestBody = {
        'n': nValue,
        'p': pValue,
        'k': kValue,
        'temperature': temp,
        'humidity': humidity,
        'ph': phValue,
        'rainfall': rainFall,
      };

      // Send POST request to Flask API
      var response = await http.post(
        Uri.parse(
            'http://172.16.29.141:5001/predict'), // Update with your Flask server URL
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);

        predictionResult = jsonResponse['predicted_crop'];
      } else {
        predictionResult = 'Error: ${response.body}';
      }
    } catch (e) {
      predictionResult = 'Error: $e';
    }
    isLoading = false;
    print(predictionResult);
    notifyListeners();
  }
}
