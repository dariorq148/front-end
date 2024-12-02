import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled3/Redes_Sociales.dart';

class MiCarouselPage extends StatelessWidget {
  const MiCarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 255,
          enlargeCenterPage: true,
          autoPlay: true,
          scrollDirection: Axis.horizontal,
          autoPlayInterval: const Duration(seconds: 3),
        ),
        items: [
          // Anuncios - ofertas
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
                const Center(
                  child: Text(
                    '¡Cámbiate a Premium!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Redes sociales
          GestureDetector(
            onTap: () {
              print('redes');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RedesSociales(),
                ),
              );
            },
            child: Container(
              width: 400,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Visita Nuestras \nRedes Sociales',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Promociones
          Container(
            width: 400,
            height: 180,
            decoration: BoxDecoration(
              color: const Color(0xFFE3AADD),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}


