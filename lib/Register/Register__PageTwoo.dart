import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/Home/Home__Page.dart';
import 'package:untitled3/Models/model__User.dart';
import 'package:untitled3/Widgets/Buttons/My__Buttons_movil.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/TextFields__Widget.dart';
import 'package:untitled3/Widgets/sized__box_Extension.dart';
import 'Core/Register__endpoint.dart';
class Register__PageT extends StatefulWidget {
  final String name, dni, lastname, birthdate;

  const Register__PageT(
      {super.key,
      required this.birthdate,
      required this.dni,
      required this.lastname,
      required this.name});

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
                          ],
                        ),
                      ),
                      40.kH,
                      /*boton*/
                      Container(
                        height: 40,
                        child: My__Buttons_Movil(
                          textbutton: 'Registrar',
                          onPressed: () async {
                            User _user = User.register(
                              name: widget.name,
                              password: passwordcontroller.text,
                              lastname: widget.lastname,
                              email: emailcontroller.text,
                              dni: widget.dni,
                              cellphone: cellphonecontroller.text,
                              birthdate: widget.birthdate,
                            );

                            await register(_user,context);                    },

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
