import 'package:flutter/material.dart';

class PingPong extends StatefulWidget {
  const PingPong({Key? key}) : super(key: key);

  @override
  State<PingPong> createState() => _PingPongState();
}

class _PingPongState extends State<PingPong> {
  bool _status = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: SafeArea(

        child: AnimatedContainer(
         
          duration: Duration(seconds: 1),
          color: Colors.blueGrey,
          padding: EdgeInsets.only(left: 20, right: 20),
          alignment: _status ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(

            height: 50,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _status = !_status;
                });
              },
              child: const Icon(Icons.sports_baseball_sharp,
                  size: 100, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
