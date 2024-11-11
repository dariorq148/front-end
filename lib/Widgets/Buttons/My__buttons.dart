import 'package:flutter/material.dart';
import 'package:untitled3/Widgets/Statics/Static__Colors.dart';
import 'package:untitled3/Widgets/Text__Widget.dart';

class My__Button extends StatefulWidget {
  final String buttonText;
  final Function()? onTap;

  const My__Button({super.key, required this.onTap, required this.buttonText});

  @override
  _My__ButtonState createState() => _My__ButtonState();
}

class _My__ButtonState extends State<My__Button> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovering = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),

          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              colors: _isHovering
                  ? [Colores.color2, Colores.color3]
                  : [Colores.color3, Colores.color2, Colores.color4],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              widget.buttonText,
              style: MyText__Bold(),
            ),
          ),
        ),
      ),
    );
  }
}
