import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/Login/Login__Page.dart';
import 'package:untitled3/Register/Register__Page.dart';
import 'package:untitled3/Widgets/Buttons/My__Buttons_movil.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/TextFields__Widget.dart';
import 'package:untitled3/Widgets/sized__box_Extension.dart';

class Register__PageT extends StatefulWidget {
  const Register__PageT({super.key});

  @override
  State<Register__PageT> createState() => _Register__PageTState();
}

class _Register__PageTState extends State<Register__PageT> {
  TextEditingController cellphonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 380,
                  child: Column(
                    children: [
                      /*Titulo*/
                      Container(
                        child: Text(
                          'Registrate',
                          style: TextStyle(color: Colores.color5, fontSize: 25),
                        ),
                      ),
                      /*formulario*/
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                        width: 350,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.phone),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                      controller: cellphonecontroller,
                                      hintText: '+51 --- --- ---',
                                      obscureText: false),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                Icon(Icons.email),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: emailcontroller,
                                    hintText: '@ejemplo.com',
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                Icon(Icons.password),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: passwordcontroller,
                                    hintText: 'Password',
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                Icon(Icons.password),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: confirmpasswordcontroller,
                                    hintText: 'Repite tu contraseña',
                                    obscureText: false,
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
                                  Text('Ya tienes cuenta?'),
                                  2.kW,
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Login__Page(),
                                          ));
                                    },
                                    child: Text(
                                      'inicia aquí',
                                      style: TextStyle(color: Colores.color6),
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
                      Container(
                        height: 40,
                        child: My__Buttons_Movil(
                          textbutton: 'Registrar',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register__PageT(),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    )));
    ;
  }
}
