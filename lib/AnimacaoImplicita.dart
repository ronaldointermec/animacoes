import 'package:flutter/material.dart';

class AnimicaoImplicita extends StatefulWidget {
  const AnimicaoImplicita({super.key});

  @override
  State<AnimicaoImplicita> createState() => _AnimicaoImplicitaState();
}

class _AnimicaoImplicitaState extends State<AnimicaoImplicita> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          width: 200,
          height: 200,
          color: Colors.purpleAccent,
        ),
        TextButton(
            onPressed: () {
              setState(() {});
            },
            child: Text('Alterar'))
      ],
    );

  }
}
