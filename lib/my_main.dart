
import 'dart:math';

import 'package:flutter/material.dart';

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('this is kimi title'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            width: 200,
            height: 200,
//            decoration: BoxDecoration(
////              color: Colors.red,
//              border: Border.all(
//                color: Colors.blue,
//                width: 10
//              )
//            ),
            color: Colors.red,
            child: Text('kimi',style: TextStyle(fontSize: 28),),
            transform: Matrix4.rotationZ(pi/9),
          ),
        ),
      ),
    );
  }


}