import 'package:flutter/material.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';

class EditarPerfil extends StatefulWidget {
  const EditarPerfil({super.key});

  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
  bool? esmasculino = false;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Datos Personales',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
          bottom: true,
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                ///datos del paciente
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10,top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFE3AADD),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(

                    children: [
                      //foto container
                      Container(
                        //foto
                        padding: EdgeInsets.all(responsive.responsiveWidth(2)),
                        decoration: const BoxDecoration(
                            /*     border: Border.all(color: Colors.black12),*/
                            ),
                        //foto
                        child: Padding(
                          padding:
                              EdgeInsets.all(responsive.responsiveWidth(8)),
                          child: Container(
                            width: responsive.responsiveWidth(100),
                            height: responsive.responsiveHeight(100),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(180),
                                color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      ///nombre

                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              'Nombres',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              'Apellidos',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),

                      const SizedBox(
                        height: 25,
                      ),

                      ///genero
                      Container(
                        child: Column(
                          children: [
                            const Text(
                              'Sexo',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'Masculino',
                                      style: TextStyle(fontFamily: 'Poppins'),
                                    ),
                                    Checkbox(
                                      value: esmasculino,
                                      onChanged: (bool? esmasculino) {
                                        setState(() {
                                          esmasculino = esmasculino!;
                                        });
                                      },
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text('Femenino',
                                        style:
                                            TextStyle(fontFamily: 'Poppins')),
                                    Checkbox(
                                      value: esmasculino,
                                      onChanged: (bool? esmasculino) {
                                        setState(() {
                                          esmasculino = esmasculino!;
                                        });
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              'Numero de Celular',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              'Correo Electronico',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      TextField(
                        decoration: InputDecoration(
                            label: const Text(
                              'Direccion Fisica',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ],
                  ),
                ),
                //actualizar perfil
                Container(
                  width: double.maxFinite,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    child: const Text(
                      'Guardar Cambios',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
