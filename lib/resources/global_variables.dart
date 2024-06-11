import 'package:flutter/material.dart';

class GlobalVariables with ChangeNotifier {
  static final GlobalVariables _instance = GlobalVariables._internal();

  factory GlobalVariables() {
    return _instance;
  }

  GlobalVariables._internal();

  String _language = 'en';

  String get language => _language;

  set language(String value) {
    _language = value;
    notifyListeners();
  }
}
