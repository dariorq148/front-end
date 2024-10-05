import 'package:flutter/material.dart';
import 'package:untitled3/Widgets/Buttons/My__Buttons_movil.dart';
import 'package:untitled3/Widgets/Buttons/My__buttons.dart';
import 'package:untitled3/Widgets/sized__box_Extension.dart';

class Login__Page extends StatefulWidget {
  const Login__Page({super.key});

  @override
  State<Login__Page> createState() => _Login__PageState();
}

class _Login__PageState extends State<Login__Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: My__Buttons_Movil(textbutton: 'Holiii', onPressed: () {

                  },),
                ),
                Row(
                  children: [],
                ),
                40.kH,
                Container(
                  child: My__Button(buttonText: 'holaaa',
                      onTap: () {}, ),
                )
              ],
            ),
          ),
        ),
        top: true,
        bottom: true,
      ),
    );
  }
}
