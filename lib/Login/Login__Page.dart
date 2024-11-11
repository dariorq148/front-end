import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled3/Models/model__User.dart';
import 'package:untitled3/Register/Core/Login__endpoint.dart';
import 'package:untitled3/Register/Register__Page.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';
import 'package:untitled3/Widgets/Buttons/My__Buttons_movil.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/TextFields__Widget.dart';
import 'package:untitled3/Widgets/sized__box_Extension.dart';

class Login__Page extends StatefulWidget {
  const Login__Page({super.key});

  @override
  State<Login__Page> createState() => _Login__PageState();
}

class _Login__PageState extends State<Login__Page> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  void clear_() {
    emailcontroller.clear();
    passwordcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Stack(
              children: [
                /*fondo*/
                Opacity(opacity: 0.2, child: Image.asset('assets/login.png')),
                Positioned.fill(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),

                ///aqui

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 380,
                  child: Column(
                    children: [
                      /*Titulo*/
                      Container(
                        child: Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                              color: Colores.color5,
                              fontSize: responsive.responsiveFontSize(18)),
                        ),
                      ),
                      /*formulario*/
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                        width: responsive.screenWidth,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.email),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                      controller: emailcontroller,
                                      hintText: 'e-mail',
                                      obscureText: false),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                const Icon(Icons.password),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: passwordcontroller,
                                    hintText: 'Contraseña',
                                    obscureText: true,
                                  ),
                                ),
                              ],
                            ),
                            15.kH,
                            /*texto*/
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('No tienes cuenta?',
                                    style: TextStyle(
                                    fontFamily: 'Poppins',
                                        fontSize: responsive.responsiveFontSize(12)
                                  ),),
                                  2.kW,
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Register__Page(),
                                          ));
                                    },
                                    child: Text(
                                      'inicia aquí',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: responsive.responsiveFontSize(12)
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      40.kH,
                      /*boton*/
                      SizedBox(
                        height: responsive.screenHeight*.06,
                        child: My__Buttons_Movil(
                            textbutton: 'Iniciar Sesion',
                            onPressed: () async {
                              User user = User.login(
                                  email: emailcontroller.text,
                                  password: passwordcontroller.text);
                              await Login(user, context);
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    )));
  }
}
