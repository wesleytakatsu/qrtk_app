import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:qrtk_app/resources/global_variables.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Bem vindo de volta
    final language = GlobalVariables().language;

    // Entrar
    final loginButtonText = {
      'en': 'Login',
      'es': 'Iniciar sesión',
      'pt-br': 'Entrar',
    };
    
    // bem vindo de volta
    final welcomeBackText = {
      'en': 'Welcome Back',
      'es': 'Bienvenido de nuevo',
      'pt-br': 'Bem-vindo de volta',
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

    // Forgot Password?
    final forgotPasswordText = {
      'en': 'Forgot Password?',
      'es': '¿Olvidaste tu contraseña?',
      'pt-br': 'Esqueceu a senha?',
    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 100 < 600
              ? 600
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
                          loginButtonText[language]!,
                          style: const TextStyle(color: Colors.white, fontSize: 40),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: Text(
                          welcomeBackText[language]!,
                          style: const TextStyle(color: Colors.white, fontSize: 18),
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
                                          hintText: emailText[language]!,
                                          hintStyle:
                                              const TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
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
                                          hintStyle:
                                              const TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                      style: const TextStyle(color: Colors.black),
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
                              forgotPasswordText[language]!,
                              style: const TextStyle(color: Colors.grey),
                            )),
                        const SizedBox(
                          height: 35,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1600),
                            child: MaterialButton(
                              onPressed: () {},
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
                                  loginButtonText[language]!,
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
