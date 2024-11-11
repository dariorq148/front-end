import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled3/ESPECIALIDA.dart';
import 'package:untitled3/Profile/Profile__page.dart';
import 'package:untitled3/Responsive/Responsive__Size.dart';

class Home__Page extends StatefulWidget {
  const Home__Page({super.key});

  @override
  State<Home__Page> createState() => _Home__PageState();
}

class _Home__PageState extends State<Home__Page> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive=Responsive(context);
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
                          height:  responsive.responsiveHeight(50),
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
                          style: TextStyle(fontFamily: 'Poppins',fontSize: responsive.responsiveFontSize(15)),
                        ),
                      )),
                      //notificaciones
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.notifications)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: responsive.responsiveHeight(1),
                ),

                ///carrusel slider
                SizedBox(
                  height: 225,
                  child: CarouselView(
                    itemExtent: 300,
                    shrinkExtent: 300,
                    itemSnapping: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      //anuncios - ofertas
                      Container(
                        width: 400,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [

                            Positioned.fill(
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                                child: Image.asset(
                                  'assets/tarjeta.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Center(
                              child: Text(
                                '¡Cámbiate a Premium!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: responsive.responsiveFontSize(18),
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //redes sociales
                      Container(
                        width: 400,
                        height: 180,
                        decoration: BoxDecoration(
                            /* image: DecorationImage(image: AssetImage('assets/fb.png'),
                          ),*/
                           /* color: Color(0xFFE3AADD),*/
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Visita Nuestras \nRedes Sociales',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                    fontSize: 15
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/fb.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Image.asset(
                                    'assets/wtp.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Image.asset(
                                    'assets/ig.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 180,
                        decoration: BoxDecoration(
                            color: const Color(0xFFE3AADD),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ],
                  ),
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
                              fontFamily: 'Poppins',fontSize: responsive.responsiveFontSize(15),
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
                                        builder: (context) => const Especialidad(),
                                      ));
                                },
                                icon: const Icon(Icons.monitor_heart_outlined)),
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
                                icon: const Icon(Icons.monitor_heart_outlined)),
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
                        width:responsive.responsiveWidth(80),
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
                          Container(
                            width: responsive.responsiveWidth(80),
                            height:  responsive.responsiveHeight(100),
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
                            height:  responsive.responsiveHeight(100),
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
                            height:  responsive.responsiveHeight(100),
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
                            height:  responsive.responsiveHeight(100),
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
                            height:  responsive.responsiveHeight(100),
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
