import 'package:flutter/material.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/Text__Widget.dart';

class My__Buttons_Movil extends StatelessWidget {
  final String textbutton;
  final Function()? onPressed;

  const My__Buttons_Movil(
      {super.key, required this.textbutton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero, // Removemos el padding aquí para usar el del Ink
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colores.color3, Colores.color2, Colores.color4],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          padding: EdgeInsets.all(15), // Movemos el padding aquí
          alignment: Alignment.center, // Alineamos el texto en el centro
          child: Text(
            textbutton,
            style: MyText__Bold(),
          ),
        ),
      ),
    );
  }
}
