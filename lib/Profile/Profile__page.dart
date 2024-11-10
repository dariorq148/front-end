import 'package:flutter/material.dart';
import 'package:untitled3/Editar_Perfil.dart';

import '../Responsive/Responsive__Size.dart';

class Profile__Page extends StatefulWidget {
  const Profile__Page({super.key});

  @override
  State<Profile__Page> createState() => _Profile__PageState();
}

class _Profile__PageState extends State<Profile__Page> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: responsive.responsiveFontSize(20)),
        ),
      ),
      body: SafeArea(
        bottom: true,
        top: true,
        left: true,
        right: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //container superior
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //foto container
                  Flexible(
                    child: Container(
                      //foto
                      child: Padding(
                        padding: EdgeInsets.all(responsive.responsiveWidth(8)),
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
                  ),
                  //nombre usuario
                  Flexible(
                    child: Container(
                      width: responsive.responsiveWidth(200),
                      height: responsive.responsiveHeight(100),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              'io Ramos ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: responsive.responsiveFontSize(20)),
                            ),
                          ),
                          Text(
                            'io@gmail.com',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          /*  border: Border.all(color: Colors.black)*/),
                    ),
                  ),
                  Flexible(
                    child: Container(
                        width: responsive.responsiveWidth(100),
                        height: responsive.responsiveHeight(100),
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditarPerfil(),
                                    ));
                              },
                              icon: Icon(Icons.edit)),
                        ),
                        decoration: BoxDecoration(
                            /*border: Border.all(color: Colors.black)*/)),
                  )
                ],
              ),
              SizedBox(
                height: responsive.responsiveHeight(20),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Mi Cuenta',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: responsive.responsiveFontSize(20),
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.translate),
                          title: Text(
                            'Idioma',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.work_history),
                          title: Text(
                            'Historial de Citas',
                            style: TextStyle(fontFamily: 'Poppins'),
                            textAlign: TextAlign.center,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(Icons.handshake),
                          title: Text(
                            'Otros',
                            style: TextStyle(fontFamily: 'Poppins'),
                            textAlign: TextAlign.center,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            print('help center');
                          },
                          child: ListTile(
                            leading: Icon(Icons.add_call),
                            title: Text(
                              style: TextStyle(fontFamily: 'Poppins'),
                              'Centro de Ayuda',
                              textAlign: TextAlign.center,
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black26)),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
                child: Container(
                  width: double.maxFinite,
                  height: responsive.responsiveHeight(50),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cerrar Sesion',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
