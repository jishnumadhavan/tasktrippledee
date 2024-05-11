import 'package:flutter/material.dart';


class DropDownController with ChangeNotifier {
  String selectedAction = 'View';

  List <String> Items= ['View', 'Edit', 'Send', 'Delete'];
  void onChange(String value){
    selectedAction=value;
    notifyListeners();
  }


}