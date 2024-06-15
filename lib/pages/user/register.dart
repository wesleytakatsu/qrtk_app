import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:qrtk_app/resources/global_variables.dart';
import 'package:qrtk_app/services/auth_service.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  //input controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _socialNameController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final language = GlobalVariables().language;

    final signUpButtonText = {
      'en': 'Sign Up',
      'es': 'Regístrate',
      'pt-br': 'Cadastrar',
    };

    // Enter your registration data
    final enterRegistrationDataText = {
      'en': 'Enter your registration data',
      'es': 'Ingresa tus datos de registro',
      'pt-br': 'Insira os dados de cadastro',
    };

    // DocumentNameText
    final documentNameText = {
      'en': 'Document name',
      'es': 'Nombre en el documento',
      'pt-br': 'Nome no documento',
    };

    // Social name optional
    final socialNameText = {
      'en': 'Social name (optional)',
      'es': 'Nombre social (opcional)',
      'pt-br': 'Nome social (opcional)',
    };

    // Telephone
    final telephoneText = {
      'en': 'Telephone',
      'es': 'Teléfono',
      'pt-br': 'Telefone',
    };
    

    // Email
    final emailText = {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt-br': 'E-mail',
    };

    // Password
    final passwordText = {
      'en': 'Password',
      'es': 'Contraseña',
      'pt-br': 'Senha',
    };

    // Business registration
    final businessRegisterText = {
      'en': 'Business registration',
      'es': 'Registro de empresa',
      'pt-br': 'Cadastro de empresa',
    };




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 100 < 800
              ? 800
              : MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.teal.shade900,
            Colors.teal.shade800,
            Colors.teal.shade400
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Text(
                          signUpButtonText[language]!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: Text(
                          enterRegistrationDataText[language]!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 60,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1400),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(225, 95, 27, .3),
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: documentNameText[language]!,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
                                      controller: _nameController,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: socialNameText[language]!,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
                                      controller: _socialNameController,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: telephoneText[language]!,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
                                      controller: _telephoneController,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: emailText[language]!,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
                                      controller: _emailController,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: passwordText[language]!,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
                                      controller: _passwordController,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 35,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1500),
                            child: Text(
                              businessRegisterText[language]!,
                              style: const TextStyle(color: Colors.grey),
                            )),
                        const SizedBox(
                          height: 35,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1600),
                            child: MaterialButton(
                              onPressed: () {
                                print('register'
                                    'name: ${_nameController.text}'
                                    'socialName: ${_socialNameController.text}'
                                    'telephone: ${_telephoneController.text}'
                                    'email: ${_emailController.text}'
                                    'password: ${_passwordController.text}'
                                );
                                AuthService().registerPerson(
                                    _nameController.text,
                                    _socialNameController.text,
                                    _telephoneController.text,
                                    _emailController.text,
                                    _passwordController.text);
                              },
                              height: 50,
                              // margin: EdgeInsets.symmetric(horizontal: 50),
                              color: const Color(0xFF59859e),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              // decoration: BoxDecoration(
                              // ),
                              child: Center(
                                child: Text(
                                  signUpButtonText[language]!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        // SizedBox(height: 50,),
                        // FadeInUp(duration: Duration(milliseconds: 1700), child: Text("Continue with social media", style: TextStyle(color: Colors.grey),)),
                        // SizedBox(height: 30,),
                        // Row(
                        //   children: <Widget>[
                        //     Expanded(
                        //       child: FadeInUp(duration: Duration(milliseconds: 1800), child: MaterialButton(
                        //         onPressed: (){},
                        //         height: 50,
                        //         color: Colors.blue,
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(50),
                        //         ),
                        //         child: Center(
                        //           child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        //         ),
                        //       )),
                        //     ),
                        //     SizedBox(width: 30,),
                        //     Expanded(
                        //       child: FadeInUp(duration: Duration(milliseconds: 1900), child: MaterialButton(
                        //         onPressed: () {},
                        //         height: 50,
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(50),

                        //         ),
                        //         color: Colors.black,
                        //         child: Center(
                        //           child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        //         ),
                        //       )),
                        //     )
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
