import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallMagic(),
    ),
  );
}

class BallMagic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text('Ask me anything'),
        ),
      ),
      body: FullBallMAgic(),
    );
  }
}

class FullBallMAgic extends StatefulWidget {
  @override
  _FullBallMAgicState createState() => _FullBallMAgicState();
}

class _FullBallMAgicState extends State<FullBallMAgic> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
          print(ballNumber);
        });
      },
      child: Image.asset('assets/images/ball$ballNumber.png'),
    ));
  }
}
