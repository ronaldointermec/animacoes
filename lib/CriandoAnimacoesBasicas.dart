import 'package:animacoes/Aviao.dart';
import 'package:animacoes/BotaoAnimado.dart';
import 'package:animacoes/PingPong.dart';
import 'package:flutter/material.dart';

class CriandoAnimacoesBasicas extends StatefulWidget {
  const CriandoAnimacoesBasicas({Key? key}) : super(key: key);

  @override
  State<CriandoAnimacoesBasicas> createState() =>
      _CriandoAnimacoesBasicasState();
}

class _CriandoAnimacoesBasicasState extends State<CriandoAnimacoesBasicas> {
  bool _status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BotaoAnimado(status: _status,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: const Icon(
          Icons.add_box,
        ),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
