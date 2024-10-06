import 'dart:ui';

import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Stack(
            children: [
              /*fondo*/
              Opacity(
                  opacity: 0.2,
                  child: Image.asset('assets/login.png')),
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
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                width: 350,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.email),
                        5.kW,
                        Expanded(
                          child: My__Textfields(
                              controller: emailcontroller,
                              hintText: 'e-mail',
                              obscureText: false),
                        ),
                      ],
                    ),
                    25.kH,
                    Row(
                      children: [
                        Icon(Icons.password),
                        5.kW,
                        Expanded(
                          child: My__Textfields(
                            controller: passwordcontroller,
                            hintText: 'Password',
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               /*texto*/
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  child: Row(
                    children: [
                      Text('No tienes cuenta?'),
                      Text(
                        'inicia aquí',
                        style: TextStyle(color: Colores.color6),
                      )
                    ],
                  ),
                ),
              ),
              40.kH,
              /*boton*/
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: My__Buttons_Movil(
                  textbutton: 'Inicia',
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                ),
              ),
            ],
          ),
        ),
            ],
          )

          ),
    )));
  }
}
