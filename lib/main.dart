import 'package:flutter/material.dart';
import 'package:game_app_ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game app ui',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}