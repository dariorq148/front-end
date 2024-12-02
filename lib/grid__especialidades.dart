import 'package:flutter/material.dart';
import 'package:untitled3/Especialidades.dart';


class EspecialidadesGrid extends StatelessWidget {
  const EspecialidadesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Especialidades',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemCount: especialidadesMedicas.length,
                  itemBuilder: (context, index) {
                    final especialidades = especialidadesMedicas[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 10,
                      ),
                      decoration: const BoxDecoration(
                        /* color: Color.fromRGBO(248, 181, 230, 1.0)*/),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(360),
                                  gradient: const RadialGradient(
                                    colors: [
                                      Color(0xFFC8A8E9),
                                      Color(0xFFE3AADD),
                                      Color(0xFFF4E7FB),
                                    ],
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  especialidades.imagen,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Container(
                              child: Flexible(
                                child: Text(
                                  especialidades.titulo,
                                  style: const TextStyle(fontFamily: 'Poppins'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
