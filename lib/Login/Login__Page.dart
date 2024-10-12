
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled3/Register/Core/Register__endpoint.dart';
import 'package:untitled3/Register/Register__Page.dart';
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

void clear_(){
  emailcontroller.clear();
  passwordcontroller.clear();
}
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
                          'Iniciar Sesión',
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
                                Icon(Icons.email),
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
                                Icon(Icons.password),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: passwordcontroller,
                                    hintText: 'Password',
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
                                  Text('No tienes cuenta?'),
                                  2.kW,
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Register__Page(),
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
                          textbutton: 'Inicia',
                          onPressed: ()async {
                        User _user=User(passwordcontroller.text,
                            emailcontroller.text);
                        await login(_user,context);
                        clear_();
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
  }
}
