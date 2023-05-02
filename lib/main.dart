import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Ballpage(),
  ));
}
class Ballpage extends StatelessWidget {
  Widget build(BuildContext buildContext){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Center(child: Text('Ask Me Anything')),),
      body: Ball(),
    );
  }
}class Ball extends StatefulWidget{
  @override
  _Ballstate createState() => _Ballstate();
}
class _Ballstate extends State<Ball>{
  int ballnumber=1;
  @override
  Widget build(BuildContext context) {
    return   Center(child: TextButton(onPressed: (){
      setState(() {
        ballnumber=Random().nextInt(5)+1;
      });
    },
      child: Image.asset('images/ball$ballnumber.png'),));
  }

}
