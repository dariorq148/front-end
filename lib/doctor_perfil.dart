import 'package:flutter/material.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';

class Perfil__Doctor extends StatefulWidget {
  const Perfil__Doctor({super.key});

  @override
  State<Perfil__Doctor> createState() => _Perfil__DoctorState();
}

class _Perfil__DoctorState extends State<Perfil__Doctor> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil Medico'),
      ),
      body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///foto
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///foto doctoc
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/hermosa.jpg',
                                ),
                                fit: BoxFit.cover)),
                      ),

                      ///nombre  - descripcion
                      Flexible(
                          child: Container(
                              child: const ListTile(
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
                  const SizedBox(
                    height: 15,
                  ),

                  ////especialidades adicionales
                  SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFF5BCBA),
                                  Color(0xFFF3DCDC),
                                ])),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 8),
                              child: Text(
                                'Neurolista',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFC8A8E9),
                                  Color(0xFFE3AADD),
                                  Color(0xFFE3AADD)
                                ])),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 8),
                              child: Text(
                                'Neuromedicina',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFC8A8E9),
                                  Color(0xFFC3C7F3),
                                  Color(0xFFC3C7F3)
                                ])),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 8),
                              child: Text(
                                'Medicina',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  //Doctor blbliografia
                  Container(
                      child: const Material(
                    child: ListTile(
                      title: Text(
                        'Bibliografia ',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ),
                      subtitle: Text(
                        'El Dr. Andrea Mendoza es una especialista en neurología con amplia experiencia en el diagnóstico y tratamiento de trastornos del sistema nervioso. Comprometido con brindar atención personalizada y de vanguardia, trata condiciones como epilepsia, esclerosis múltiple, migrañas, enfermedades neurodegenerativas y más. Su enfoque integral combina la investigación actual con la empatía hacia sus pacientes, mejorando su calidad de vida.',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.black26),
                      ),
                    ),
                  )),
                  const SizedBox(
                    height: 15,
                  ),

                  ///horarios de atencion
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        /*  border: Border.all(color: Colors.black),*/
                        gradient: const LinearGradient(colors: [
                          Color(0xFFC8A8E9),
                          Color(0xFFE3AADD),
                          Color(0xFFF5BCBA),
                          Color(0xFFF3DCDC),
                          Color(0xFFF4E7FB)
                        ])),
                    child: const Text(
                      'Dias de atencion',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ///horarios de la semana
                  SizedBox(
                    height: responsive.responsiveHeight(110),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ///container general
                        Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            decoration: const BoxDecoration(
                                /* border: Border.all(color: Colors.black26)*/),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xFFF5BCBA),
                                        Color(0xFFF3DCDC)
                                      ])),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '17',
                                      style: TextStyle(
                                          fontSize: 25, fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Lunes',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            decoration: const BoxDecoration(
                                /*border: Border.all(color: Colors.black26)*/),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xFFF5BCBA),
                                        Color(0xFFF3DCDC)
                                      ])),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '18',
                                      style: TextStyle(
                                          fontSize: 25, fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Martes',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            decoration: const BoxDecoration(
                                /*border: Border.all(color: Colors.black26*/),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xFFF5BCBA),
                                        Color(0xFFF3DCDC)
                                      ])),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '19',
                                      style: TextStyle(
                                          fontSize: 25, fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Miercoles',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            decoration: const BoxDecoration(
                                /* border: Border.all(color: Colors.black26)*/),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xFFF5BCBA),
                                        Color(0xFFF3DCDC)
                                      ])),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: 25, fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'jueves',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //Turnos Disponibles
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        /*  border: Border.all(color: Colors.black),*/
                        gradient: const LinearGradient(colors: [
                          Color(0xFFC8A8E9),
                          Color(0xFFE3AADD),
                          Color(0xFFF5BCBA),
                          Color(0xFFF3DCDC),
                          Color(0xFFF4E7FB)
                        ])),
                    child: const Text(
                      'Turnos Disponibles',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  ///turnos
                  Container(
                    height: 60,
                    decoration: const BoxDecoration(
                        /*
                            border: Border.all(color: Colors.black)*/
                        ),
                    child: ListView(
                      padding: const EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(colors: [
                                Color(0xFFC8A8E9),
                                Color(0xFFE3AADD),
                                Color(0xFFE3AADD),
                              ])),
                          child: const Center(
                            child: Text(
                              'Mañana',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),

                        ///tarde
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(colors: [
                                Color(0xFFC8A8E9),
                                Color(0xFFE3AADD),
                                Color(0xFFE3AADD),
                              ])),
                          child: const Center(
                            child: Text(
                              'Tarde',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        //noche
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(colors: [
                                Color(0xFFC8A8E9),
                                Color(0xFFE3AADD),
                                Color(0xFFE3AADD),
                              ])),
                          child: const Center(
                            child: Text(
                              'Noche',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Poppins'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
