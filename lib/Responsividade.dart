import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Responsividade extends StatefulWidget {
  const Responsividade({super.key});

  @override
  State<Responsividade> createState() => _ResponsividadeState();
}

class _ResponsividadeState extends State<Responsividade> {
  @override
  Widget build(BuildContext context) {

    var largura = MediaQuery.of(context).size.width/3;
    return Scaffold(
      appBar: AppBar(title: Text('Responsividade'),),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.width,
            width: largura,
            color: Colors.orange,
          ),
          Container(
            height: MediaQuery.of(context).size.width,
            width: largura,
            color: Colors.purpleAccent,
          ),
          Container(
            height: MediaQuery.of(context).size.width,
            width: largura,
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
