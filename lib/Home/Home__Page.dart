
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/ESPECIALIDA.dart';
import 'package:untitled3/Profile/Profile__page.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';
import 'package:untitled3/Slider__.dart';
import 'package:untitled3/doctor_perfil.dart';
import 'package:untitled3/grid__especialidades.dart';

class Home__Page extends StatefulWidget {
  const Home__Page({super.key});

  @override
  State<Home__Page> createState() => _Home__PageState();
}

class _Home__PageState extends State<Home__Page> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      /* border:
                      Border.all(color: Colors.black26)*/
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///foto
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile__Page(),
                              ));
                        },
                        child: Container(
                          width: responsive.responsiveWidth(50),
                          height: responsive.responsiveHeight(50),
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(360)),
                        ),
                      ),
                      //nombre de usuario
                      Flexible(
                          child: Container(
                        child: Text(
                          'Hola io Ramos',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: responsive.responsiveFontSize(15)),
                        ),
                      )),
                      //notificaciones
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: responsive.responsiveHeight(1),
                ),

                ///carrusel slider
                const SizedBox(
                  height: 255,
                 child: MiCarouselPage(),
                ),
                const SizedBox(
                  height: 25,
                ),
                // titulos especialidades
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Especidalidades',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: responsive.responsiveFontSize(15),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //mas especialidades
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EspecialidadesGrid(),
                              ));
                        },
                        child: Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xFFE3AADD),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                              child: Text(
                            'Ver Todo',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: responsive.responsiveFontSize(15),
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                ///especialidades
                SizedBox(
                  height: responsive.responsiveHeight(125),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //especialidad 1 ...
                      Column(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Especialidad(),
                                      ));
                                },
                                icon: const Icon(  CupertinoIcons.heart_fill,)),
                          ),
                          const Text(
                            'Cardiologia',
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
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {},
                                icon:  const Icon(Icons.abc_outlined)),
                          ),
                          const Text(
                            'Neurologia',
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
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.monitor_heart_outlined)),
                          ),
                          const Text(
                            'Urologia',
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
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.monitor_heart_outlined)),
                          ),
                          const Text(
                            'Traumatologia',
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
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.monitor_heart_outlined)),
                          ),
                          const Text(
                            'Dermatología6',
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
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.monitor_heart_outlined)),
                          ),
                          const Text(
                            'Anestesiología',
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
                          //bolita
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.monitor_heart_outlined)),
                          ),
                          const Text(
                            'Optalmologia',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                ///doctores y mas
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nuestros \nEspecialistas',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: responsive.responsiveFontSize(15),
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: responsive.responsiveWidth(80),
                        height: responsive.responsiveHeight(30),
                        decoration: BoxDecoration(
                            color: const Color(0xFFE3AADD),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                          'Ver Todo',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: responsive.responsiveFontSize(15),
                              fontWeight: FontWeight.w400),
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: responsive.responsiveHeight(210),
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Perfil__Doctor(),
                                  ));
                            },
                            child: Container(
                              width: responsive.responsiveWidth(80),
                              height: responsive.responsiveHeight(100),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: const Color(0xFFF5BCBA),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(360),
                                    child: Image.asset('assets/hermosa.jpg'),
                                  ),
                                  const Text(
                                    'Doctora Andrea M. ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: responsive.responsiveWidth(25),
                          ),
                          Container(
                            width: responsive.responsiveWidth(80),
                            height: responsive.responsiveHeight(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: const Color(0xFFF5BCBA),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  child: Image.asset('assets/hermosa.jpg'),
                                ),
                                const Text(
                                  'Doctora Xxx ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: responsive.responsiveWidth(25),
                          ),
                          Container(
                            width: responsive.responsiveWidth(80),
                            height: responsive.responsiveHeight(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: const Color(0xFFF5BCBA),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  child: Image.asset('assets/hermosa.jpg'),
                                ),
                                const Text(
                                  'Doctora Xxx ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: responsive.responsiveWidth(25),
                          ),
                          Container(
                            width: responsive.responsiveWidth(80),
                            height: responsive.responsiveHeight(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: const Color(0xFFF5BCBA),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  child: Image.asset('assets/hermosa.jpg'),
                                ),
                                const Text(
                                  'Doctora Xxx ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: responsive.responsiveWidth(25),
                          ),
                          Container(
                            width: responsive.responsiveWidth(80),
                            height: responsive.responsiveHeight(100),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: const Color(0xFFF5BCBA),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  child: Image.asset('assets/hermosa.jpg'),
                                ),
                                const Text(
                                  'Doctora Xxx ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: responsive.responsiveWidth(25),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
