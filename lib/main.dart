import 'package:flutter/material.dart';
import 'package:qrtk_app/app.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qrtk_app/resources/global_variables.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appSupportDirectory = await getApplicationSupportDirectory();
  Hive.init(appSupportDirectory.path);
  var box = await Hive.openBox('local_data');
  var language = box.get('language');
  print('language in main: $language');
  if (language == null) {
    language = 'pt-br';
    box.put('language', language);
  }
  print('language in main: $language');
  GlobalVariables().language = language;
  print('GlobalVariables().language in main: ${GlobalVariables().language}');





  // print('language in main: $language');
  // print('GlobalVariables().language in main: ${GlobalVariables().language}');


  runApp(
    const App(),
  );
}

