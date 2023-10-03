import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({super.key});

  @override
  State<ResponsividadeRowCol> createState() => _ResposividadeRowColState();
}

class _ResposividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.pink,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.greenAccent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
