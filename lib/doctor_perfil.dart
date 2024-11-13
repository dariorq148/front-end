import 'package:flutter/material.dart';

class Perfil__Doctor extends StatefulWidget {
  const Perfil__Doctor({super.key});

  @override
  State<Perfil__Doctor> createState() => _Perfil__DoctorState();
}

class _Perfil__DoctorState extends State<Perfil__Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Medico'),
      ),
      body: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: [
              ///foto
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///foto doctoc
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/hermosa.jpg',
                                ),
                                fit: BoxFit.cover)),
                      ),

                      ///nombre  - descripcion
                      Flexible(
                          child: Container(
                              child: ListTile(
                        title: Text(
                          'Dr. Andrea Mendoza Cardenas',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        subtitle: Text(
                          'andrea@gmail.com',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ))),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),

              ////especialidades adicionales
              Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          child: Text(
                            'Neurolista',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFF5BCBA)),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          child: Text(
                            'Neuromedicina',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFC8A8E9)),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          child: Text(
                            'Medicina',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFC8A8E9)),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              //Doctor blbliografia
              Container(
                  child: Material(
                child: ListTile(
                  title: Text(
                    'Bibliografia ',
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  subtitle: Text(
                    'El Dr. Andrea Mendoza es una especialista en neurología con amplia experiencia en el diagnóstico y tratamiento de trastornos del sistema nervioso. Comprometido con brindar atención personalizada y de vanguardia, trata condiciones como epilepsia, esclerosis múltiple, migrañas, enfermedades neurodegenerativas y más. Su enfoque integral combina la investigación actual con la empatía hacia sus pacientes, mejorando su calidad de vida.',
                    style: TextStyle(fontFamily: 'Poppins', color: Colors.black26),
                  ),
                ),
              )),


            ],
          )),
    );
  }
}
