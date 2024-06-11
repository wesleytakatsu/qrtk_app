import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrtk_app/services/local_data_service.dart';
import 'package:qrtk_app/resources/global_variables.dart';

class HomeWelcome extends StatefulWidget {
  const HomeWelcome({super.key});

  @override
  _HomeWelcomeState createState() => _HomeWelcomeState();
}

class _HomeWelcomeState extends State<HomeWelcome> {
  String selectedLanguage = GlobalVariables().language;

  LocalDataService localDataService = LocalDataService();


  @override
  Widget build(BuildContext context) {

    // localDataService.getData('language').then((value) {
    //   if (value != null) {
    //     setState(() {
    //       selectedLanguage = value;
    //     });
    //   }
    // });

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    final welcomeText = {
      'en': 'Welcome',
      'es': 'Bienvenido',
      'pt-br': 'Bem-vindo',
    };

    final welcomeSubText = {
      'en':
          'QRTK is an app that will help you manage your business more efficiently.',
      'es':
          'QRTK es una aplicación que te ayudará a gestionar tu empresa de forma más eficiente.',
      'pt-br':
          'O QRTK é um aplicativo que te ajudará a gerenciar a sua empresa de forma mais eficiente.',
    };

    final registerButtonText = {
      'en': 'Register',
      'es': 'Registro',
      'pt-br': 'Registrar',
    };

    final loginButtonText = {
      'en': 'Login',
      'es': 'Iniciar sesión',
      'pt-br': 'Entrar',
    };

    final languages = {
      'en': 'English',
      'es': 'Español',
      'pt-br': 'Português',
    };

    return Scaffold(
      backgroundColor: const Color(0xFF59859e),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          height: MediaQuery.of(context).size.height - 100 < 600
              ? 600
              : MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                  image: const AssetImage('images/welcome_image.jpeg'),
                  height: height * 0.6),
              DropdownButton<String>(
                value: selectedLanguage,
                items: languages.keys.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(languages[value]!),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    selectedLanguage = value!;
                    localDataService.saveData('language', value);
                    GlobalVariables().language = value;
                  });
                },
              ),
              Column(
                children: [
                  Text(
                    welcomeText[selectedLanguage]!,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    welcomeSubText[selectedLanguage]!,
                    style: const TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => context.push('/register'),
                      child: Text(registerButtonText[selectedLanguage]!),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => context.push('/login'),
                      child: Text(loginButtonText[selectedLanguage]!),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
