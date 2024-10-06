import 'package:flutter/material.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';

class My__Textfields extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const My__Textfields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colores.color4),
          enabled: true,
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colores.color5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colores.color1),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colores.color1)),
        ),
      ),
    );
  }
}
