import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:qrtk_app/configs.dart';
import 'package:qrtk_app/resources/global_variables.dart';

class AuthService extends ChangeNotifier {
  bool isAuthenticated = false;

  // login() {
  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('$loginUrl/login');
    
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      GlobalVariables().token = data['token'];
      isAuthenticated = true;
      notifyListeners();
      return data;
    } else {
      throw Exception('Failed to login');
    }


  //   isAuthenticated = true;
  //   notifyListeners();

  }


  // register
  Future<Map<String, dynamic>> registerPerson(String name, String socialName, String tel, String email, String password) async {
    final url = Uri.parse(registerPersonUrl);
    print('url: $url');
    
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'name_registry': name,
        'name_social': socialName,
        'telephone': tel,
        'email': email,
        'password': password,
      }),
    );

    print('response: ${response.body}');

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to register');
    }
  }


  logout() {
    isAuthenticated = false;
    notifyListeners();
  }

    // ./configs.dart registerUrl


}