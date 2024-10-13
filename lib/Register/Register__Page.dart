import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/Register/Register__PageTwoo.dart';
import 'package:untitled3/Widgets/Buttons/My__Buttons_movil.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/TextFields__Widget.dart';
import 'package:untitled3/Widgets/sized__box_Extension.dart';

class Register__Page extends StatefulWidget {
  const Register__Page({super.key});

  @override
  State<Register__Page> createState() => _Register__PageState();
}

class _Register__PageState extends State<Register__Page> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();

  TextEditingController birthdatecontroller = TextEditingController();
  TextEditingController Dnicontroller = TextEditingController();

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
                Opacity(
                    opacity: 0.2, child: Image.asset('assets/registrar.png')),
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
                                Icon(Icons.person),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                      controller: namecontroller,
                                      hintText: 'Nombres',
                                      obscureText: false),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                Icon(Icons.person),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: lastnamecontroller,
                                    hintText: 'Apellidos',
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                Icon(Icons.date_range),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: birthdatecontroller,
                                    hintText: '00/00/000',
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                            15.kH,
                            Row(
                              children: [
                                Icon(Icons.perm_identity),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: Dnicontroller,
                                    hintText: 'Documento de Identidad',
                                    obscureText: false,
                                  ),
                                ),
                              ],
                            ),
                            15.kH,
                            /*texto*/
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Ya casi terminas!!!',
                                    style: TextStyle(fontSize: 20),
                                  ),
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
                          textbutton: 'Siguiente',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register__PageT(
                                    name: namecontroller.text,
                                    lastname: lastnamecontroller.text,
                                    birthdate: birthdatecontroller.text,
                                    dni: Dnicontroller.text,
                                  ),
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
  }
}
