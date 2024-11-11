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
        title: const Text(
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xFFC8A8E9)),
                child: Image.asset(
                  'assets/Cardiologia.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /// descripcion espcialidad
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: [
                    const Row(
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
                    const SizedBox(
                      height: 20,
                    ),
                    ///descripcion del servicio
                    Container(
                      padding: const EdgeInsets.all(25),
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFC8A8E9),
                      ),
                      child: const Text(
                          'Nuestro servicio de Cardiología ofrece una atención integral para el diagnóstico y tratamiento de enfermedades del corazón y el sistema circulatorio. Contamos con especialistas altamente calificados y la última tecnología en equipos de monitoreo y diagnóstico, para brindarte el cuidado preciso y personalizado que necesitas.',
                      style: TextStyle(fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              //doctores de especialidad
              Container(
                child: const Row(
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
              const SizedBox(
                height: 25,
              ),

              SizedBox(
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
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
                          'Doc. Maria Aguilar X',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC8A8E9),
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
                        const Text(
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
              const SizedBox(
                height: 30,
              ),

              //boton agendar cita grande
              Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CalendarioCitas(),
                        ));
                  },
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  child: const Text(
                    'Agendar Cita',
                    style: TextStyle(
                        fontFamily: 'Poppins', fontSize: 25, letterSpacing: 2),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
