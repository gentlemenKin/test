
import 'package:flutter/material.dart';
import 'package:flutter_app/flash/SplashScreen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'flutter demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: SplashScreen(),
    );
  }
}
