import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carrusel extends StatefulWidget {
  const Carrusel({super.key});

  @override
  State<Carrusel> createState() => _CarruselState();
}

class _CarruselState extends State<Carrusel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: CarouselSlider(
            items: [
              _imagenes('assets/joven.jpg'),
              _imagenes('assets/medico.jpg'),
              _imagenes('assets/hermosa.jpg'),
            ],
            options: CarouselOptions(
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: true,
            )));
  }

  Widget _imagenes(String ruta) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE0E5EC),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500]!,
            offset: Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          ruta,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
