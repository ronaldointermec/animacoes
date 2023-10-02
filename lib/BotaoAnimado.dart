import 'package:flutter/material.dart';

class BotaoAnimado extends StatefulWidget {
  bool status;

  BotaoAnimado({super.key, required this.status});

  @override
  State<BotaoAnimado> createState() => _BotaoAnimadoState();
}

class _BotaoAnimadoState extends State<BotaoAnimado> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.status = !widget.status;
        });
      },
      child: AnimatedContainer(
        duration: Duration(microseconds: 300),
        curve: Curves.linear,
        alignment: Alignment.center,
        width: widget.status ? 60 : 160,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: const Duration(microseconds: 100),
                opacity: widget.status ? 1 : 0,
                child: const Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: const Duration(microseconds: 100),
                opacity: widget.status ? 0 : 1,
                child: const Text(
                  'Mensagem',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
