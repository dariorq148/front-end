import 'package:flutter/material.dart';

class RedesSociales extends StatelessWidget {
  const RedesSociales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Redes Sociales',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      body: SafeArea(
          bottom: true,
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                Container(
                  child: const Flexible(
                      child: Text(
                        'Visítanos en nuestras redes sociales para mantenerte informado sobre nuestras últimas novedades, consejos, eventos y contenido exclusivo. Síguenos y únete a nuestra comunidad para estar siempre al día',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/redesSociales/wtp.png',
                            color: Colors.black26,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Image.asset(
                            'assets/redesSociales/ig.png',
                            color: Colors.black26,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Image.asset(
                            'assets/redesSociales/yt.png',
                            color: Colors.black26,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Image.asset(
                            'assets/redesSociales/email.png',
                            color: Colors.black26,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Image.asset(
                            'assets/redesSociales/x.png',
                            color: Colors.black26,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    )
                  /*  decoration: BoxDecoration(color: Colors.black26),*/
                ),
                
                Center(child: Icon(Icons.abc_outlined),)
              ],
            ),
          )),
    );
  }
}
