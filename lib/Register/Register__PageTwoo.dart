import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/Home/Home__Page.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';
import 'package:untitled3/Widgets/Buttons/My__Buttons_movil.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/TextFields__Widget.dart';
import 'package:untitled3/Widgets/sized__box_Extension.dart';

class Register__PageT extends StatefulWidget {
  /* final String name;
  final String lastname;
  final String bithdate;
  final String dni;*/

  const Register__PageT({
    super.key,
    /*  required this.name,
    required this.lastname,
    required this.bithdate,
    required this.dni,*/
  });

  @override
  State<Register__PageT> createState() => _Register__PageTState();
}

class _Register__PageTState extends State<Register__PageT> {
  TextEditingController cellphonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController direction = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 100),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: responsive.responsiveWidth(380),
                  child: Column(
                    children: [
                      /*Titulo*/
                      Container(
                        child: Text(
                          'Ya casi terminas',
                          style: TextStyle(
                              color: Colores.color5,
                              fontSize: responsive.responsiveFontSize(18)),
                        ),
                      ),
                      /*formulario*/
                      Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                        width: responsive.responsiveWidth(350),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.phone),
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
                                const Icon(Icons.email),
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
                                const Icon(Icons.password),
                                1.kW,
                                Expanded(
                                  child: My__Textfields(
                                    controller: passwordcontroller,
                                    hintText: 'Contraseña',
                                    obscureText: false,
                                  ),
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
                      SizedBox(
                        height: 40,
                        child: My__Buttons_Movil(
                          textbutton: 'Registrar',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Home__Page(),
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
