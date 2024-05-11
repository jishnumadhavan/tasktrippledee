import 'package:flutter/material.dart';

class CountrySelectionController with ChangeNotifier {
  String selectedCountry = 'IN';
  String selectedState = 'KA';

  Map<String, List<String>> Data = {
    'IN': ['KA', 'KL', 'TN', 'MH'],
    'US': ['AL', 'DE', 'GA'],
    'CA': ['ON', 'QC', 'BC'],
  };

  void onChangeCountry(String value){
    selectedCountry=value;
    selectedState = Data[value]![0];
    notifyListeners();
  }

  void onChangeState(String value){
    selectedState=value;
    notifyListeners();
  }


}