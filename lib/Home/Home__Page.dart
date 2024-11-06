import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
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
                      child: Text('Hola Io Ramos'),
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
                      child: Text('Especidalidades'),
                    ),
                    GestureDetector(
                     onTap: (){
                       //mas especialidades
                     },

                      child: Container(
                        width: 80,
                        height: 30,
                        child: Center(child: Text('Ver Todo')),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //especialidad 1 ...
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
                        Text('Cardiologia')
                      ],
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
                        Text('Neurologia')
                      ],
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
                        Text('Urologia')
                      ],
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
                        Text('Traumatologia')
                      ],
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
                        Text('Pediatria')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ///doctores y mas
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nuestros Especialistas'),
                    Container(
                      width: 80,
                      height: 30,
                      child: Center(child: Text('Ver Todo')),
                      decoration: BoxDecoration(
                          color: Color(0xFFE3AADD),
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ],
                ),
              ),SizedBox(
                height: 25,
              ),
              Container(

                height: 200,
                child:Padding(padding: EdgeInsets.all(10),
                  child: CarouselView(

                      itemExtent: 200,
                      children:[
                        Container(
                          child: Column(
                            children: [
                              Center(child: Image.asset('assets/joven.jpg', fit: BoxFit.cover,height: 150,)),
                              Text('Doctor Ramos '),
                              
                            ],
                          ),
                        )
                      ] ),
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
