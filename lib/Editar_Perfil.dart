import 'package:flutter/material.dart';
import 'package:untitled3/Cita_Confirmada.dart';
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
        title: Text(
          'Datos Personales',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
          bottom: true,
          top: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                ///datos del paciente
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10,top: 10, bottom: 10),
                  child: Column(

                    children: [
                      //foto container
                      Container(
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
                        padding: EdgeInsets.all(responsive.responsiveWidth(2)),
                        decoration: BoxDecoration(
                            /*     border: Border.all(color: Colors.black12),*/
                            ),
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      ///nombre

                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Nombres',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Apellidos',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      ///genero
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Sexo',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text(
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
                                    Text('Femenino',
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
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Numero de Celular',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Correo Electronico',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      TextField(
                        decoration: InputDecoration(
                            label: Text(
                              'Direccion Fisica',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            hintText: '',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFE3AADD),
                      borderRadius: BorderRadius.circular(5)),
                ),
                //actualizar perfil
                Container(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Guardar Cambios',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          letterSpacing: 2),
                    ),
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
          )),
    );
  }
}
