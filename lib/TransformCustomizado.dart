import 'package:flutter/material.dart';
import 'dart:ffi';
class TransformCustomizado extends StatefulWidget{

  @override
  State<TransformCustomizado> createState() => _TransformCustomizadoState();

}
class _TransformCustomizadoState extends State<TransformCustomizado>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        tween: Tween<double>(begin: 0, end: 6.28),
        builder: (context, value, child) {
          return Transform.rotate(
            angle: value,
            child: Image.asset('imagens/logo.png'),
          );
        },
      ),
    );
  }
}