import 'package:flutter/material.dart';
import 'package:untitled3/Home/Widgets/carouselSlider.dart';

class Home__Page extends StatefulWidget {
  const Home__Page({super.key});

  @override
  State<Home__Page> createState() => _Home__PageState();
}

class _Home__PageState extends State<Home__Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE0E5EC),
      ),

      backgroundColor: Color(0xFFE0E5EC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Carrusel(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E5EC),
                              borderRadius: BorderRadius.circular(10),
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
                          ),
                          Container(
                            width: 50,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E5EC),
                              borderRadius: BorderRadius.circular(10),
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
                          ),
                          Container(
                            width: 50,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E5EC),
                              borderRadius: BorderRadius.circular(10),
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
                          ),
                          Container(
                            width: 50,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E5EC),
                              borderRadius: BorderRadius.circular(10),
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
                          ),
                        ],
                      ),
                    SizedBox(height: 20,),

                      Container(
                        width: 450,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFE0E5EC),
                          borderRadius: BorderRadius.circular(10),
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
                      ), SizedBox(height: 20,),

                      Container(
                        width: 450,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFE0E5EC),
                          borderRadius: BorderRadius.circular(10),
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
                      ),
                      SizedBox(height: 20,),

                      Container(
                        width: 450,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFE0E5EC),
                          borderRadius: BorderRadius.circular(10),
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
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
