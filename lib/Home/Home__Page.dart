import 'package:flutter/material.dart';
import 'package:untitled3/ESPECIALIDA.dart';
import 'package:untitled3/Profile/Profile__page.dart';

class Home__Page extends StatefulWidget {
  const Home__Page({super.key});

  @override
  State<Home__Page> createState() => _Home__PageState();
}

class _Home__PageState extends State<Home__Page> {
  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
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
                                builder: (context) => Profile__Page(),
                              ));
                        },
                        child: Container(
                          width: 80,
                          height: 80,
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
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      )),
                      //notificaciones
                      Container(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.notifications)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                ///carrusel slider
                Container(
                  height: 300,
                  child: CarouselView(
                    itemExtent: 250,
                    scrollDirection: Axis.horizontal,
                    children: [
                      //anuncios - ofertas
                      Container(
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5BCBA),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFFE3AADD),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Container(
                        width: 400,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFFE3AADD),
                            borderRadius: BorderRadius.circular(25)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // titulos especialidades
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Especidalidades',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
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
                          child: Center(
                              child: Text(
                            'Ver Todo',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xFFE3AADD),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                ///especialidades
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //especialidad 1 ...
                      Column(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Especialidad(),
                                      ));
                                },
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Cardiologia',
                            style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Neurologia', style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Urologia', style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Traumatologia', style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Dermatología6', style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Anestesiología', style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          //bolita
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 70,
                            width: 70,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.monitor_heart_outlined)),
                            decoration: BoxDecoration(
                                color: Color(0xFFC8A8E9),
                                borderRadius: BorderRadius.circular(360)),
                          ),
                          Text('Optalmologia', style: TextStyle(
                            fontFamily: 'Poppins',
                          ),)
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
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        child: Center(
                            child: Text(
                          'Ver Todo',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                              fontSize: 15, fontWeight: FontWeight.w400),
                        )),
                        decoration: BoxDecoration(
                            color: Color(0xFFE3AADD),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 250,
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 100,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  child: Image.asset('assets/hermosa.jpg'),
                                ),
                                Text('Doctora Xxx ' ,
                                  style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Color(0xFFF5BCBA),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 100,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                   child: Image.asset('assets/hermosa.jpg'),
                                ),
                                  Text('Doctora Xxx ',style: TextStyle(
                                    fontFamily: 'Poppins',
                                  )),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Color(0xFFF5BCBA),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 100,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  /* child: Image.asset('assets/hermosa.jpg'),*/
                                ),
                                /*  Text('Doctora Xxx '),*/
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Color(0xFFF5BCBA),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 100,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  /* child: Image.asset('assets/hermosa.jpg'),*/
                                ),
                                /*  Text('Doctora Xxx '),*/
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Color(0xFFF5BCBA),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 100,
                            height: 200,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(360),
                                  /* child: Image.asset('assets/hermosa.jpg'),*/
                                ),
                                /*  Text('Doctora Xxx '),*/
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Color(0xFFF5BCBA),
                            ),
                          ),
                          SizedBox(
                            width: 50,
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
