import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({super.key});

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {

          return Center(
            child: orientacao == Orientation.portrait
                ? Text('Portrait')
                : Text('Landscape'),
          );
        },
      ),
    );
  }
}
