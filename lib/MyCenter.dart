import 'package:flutter/material.dart';

class MyCenter extends StatefulWidget {
  @override
  _MyCenterState createState() => _MyCenterState();
}

class _MyCenterState extends State<MyCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromRGBO(136, 170, 171, 1),
      body: Center(child: Text('MyPersonalCenter'),),
    );
  }
}