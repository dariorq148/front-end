import 'package:flutter/material.dart';
import 'package:untitled3/Horarios-Citas.dart';

class Especialidad extends StatefulWidget {
  const Especialidad({super.key});

  @override
  State<Especialidad> createState() => _EspecialidadState();
}

class _EspecialidadState extends State<Especialidad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cardiologia',
          style: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //foto especialidad
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset(
                  'assets/Cardiologia.png',
                  fit: BoxFit.contain,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFC8A8E9)),
              ),
              SizedBox(
                height: 20,
              ),

              /// descripcion espcialidad
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Descripcion',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ///descripcion del servicio
                    Container(
                      padding: EdgeInsets.all(25),
                      child: Text(
                          'Nuestro servicio de Cardiología ofrece una atención integral para el diagnóstico y tratamiento de enfermedades del corazón y el sistema circulatorio. Contamos con especialistas altamente calificados y la última tecnología en equipos de monitoreo y diagnóstico, para brindarte el cuidado preciso y personalizado que necesitas.',
                      style: TextStyle(fontFamily: 'Poppins'),
                      ),
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFC8A8E9),
                      ),
                    ),
                  ],
                ),
              ),
              //doctores de especialidad
              Container(
                child: Row(
                  children: [
                    Text(
                      'Especialistas en Cardiologia',
                      style: TextStyle(
                            fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFC8A8E9),
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.asset(
                              'assets/hermosa.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //boton agendar cita grande
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CalendarioCitas(),
                        ));
                  },
                  child: Text(
                    'Agendar Cita',
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 25, letterSpacing: 2),
                  ),
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                ),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
