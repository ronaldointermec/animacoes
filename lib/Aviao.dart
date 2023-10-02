import 'package:flutter/material.dart';

class Aviao extends StatefulWidget {
  bool status;

  Aviao({super.key, required this.status});

  @override
  State<Aviao> createState() => _AviaoState();
}

class _AviaoState extends State<Aviao> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      color: Colors.green,
      padding: EdgeInsets.only(bottom: 100, top: 20),
      alignment: widget.status ? Alignment.bottomCenter : Alignment.topCenter,
      child: AnimatedOpacity(
        duration: Duration(seconds: 1),
        opacity: widget.status ? 1 : 0,
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.status = !widget.status;
            });
          },
          child: Container(
            height: 50,
            child: const Icon(Icons.airplanemode_active,
                size: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
