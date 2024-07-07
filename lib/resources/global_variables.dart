import 'package:flutter/material.dart';

class GlobalVariables with ChangeNotifier {
  static final GlobalVariables _instance = GlobalVariables._internal();

  factory GlobalVariables() {
    return _instance;
  }

  GlobalVariables._internal();

  String _language = 'en';
  String _theme = 'light';
  String _token = '';

  String get language => _language;
  String get theme => _theme;
  String get token => _token;

  set language(String value) {
    _language = value;
    notifyListeners();
  }

  set theme(String value) {
    _theme = value;
    notifyListeners();
  }

  set token(String value) {
    _token = value;
    notifyListeners();
  }


}
