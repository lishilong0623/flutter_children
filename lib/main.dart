import 'package:beanlover/Index_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'HotNews.dart';
import 'LifeEdu.dart';
import 'MyCenter.dart';
import 'OnlineShop.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index_Page(),
    );
  }
}