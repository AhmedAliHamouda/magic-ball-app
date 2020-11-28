import 'package:flutter/material.dart';
import 'dart:math';
import 'package:toast/toast.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo.shade700,
      appBar: AppBar(
        title: Text('Magic Ball'),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
      ),
      body: MagicBallBody(),
    ),
  ),
);

class MagicBallBody extends StatefulWidget {
  @override
  _MagicBallBodyState createState() => _MagicBallBodyState();
}

class _MagicBallBodyState extends State<MagicBallBody> {
  int PressButton = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset('images/ball$PressButton.png'),
          onPressed: () {
            setState(() {
              PressButton = Random().nextInt(5) + 1;
              // Toast.show('u Press in Picture number $PressButton', context,
              //     duration: Toast.LENGTH_SHORT,
              //     gravity: Toast.BOTTOM,
              //     backgroundRadius: 10,
              //     textColor: Colors.white,
              //     backgroundColor: Colors.black45);
            });
          },
        ),
      ),
    );
  }
}
