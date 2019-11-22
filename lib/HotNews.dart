import 'package:flutter/material.dart';

class HotNews extends StatefulWidget {
  @override
  _HotNewsState createState() => _HotNewsState();
}

class _HotNewsState extends State<HotNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(136, 170, 171, 1),
      body: Center(child: Text('HotNews'),),
    );
  }
}