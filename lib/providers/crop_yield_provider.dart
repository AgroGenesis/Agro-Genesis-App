import 'package:agrogenesis/enum/seasons.dart';
import 'package:flutter/material.dart';

class CropYieldProvider extends ChangeNotifier {
  int _nValue = 50;
  int _pValue = 40;
  int _kValue = 30;
  int get nValue => _nValue;
  int get pValue => _pValue;
  int get kValue => _kValue;
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
}
