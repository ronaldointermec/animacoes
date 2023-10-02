import 'package:flutter/material.dart';

import 'TransformCustomizado.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({super.key});

  @override
  State<AnimacaoTween> createState() => _AnimacaoTween();
}

//
class _AnimacaoTween extends State<AnimacaoTween> {
  final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TweenAnimationBuilder(
      duration: Duration(seconds: 2),
      tween: colorTween,
      builder: (context, color, widget) {
        return ColorFiltered(
          colorFilter: ColorFilter.mode(color!, BlendMode.overlay),
          child: widget,
        );
      },
      child:  Image.asset("imagens/estrelas.jpg"),
    )
        // child:
        // TweenAnimationBuilder(
        //   duration: Duration(seconds: 2),
        //   tween: Tween<double>(begin: 50, end: 180),
        //   builder: (context, largura, widget) {
        //     return Container(color: Colors.green, width: largura, height: 60,);
        //   },
        // ),
        );
  }
}
