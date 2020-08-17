
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
class imageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('this is kimi title'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.network('http://www.baidu.com/img/bd_logo1.png?where=super',
              width: 100,
              height: 100,),

//              Image.asset('images/a_dot_burr.jpeg'),

            ],
          )
        ),
      ),
    );
  }



}

class MemoryImageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    _MemoryWidgetState();
  }



}
class _MemoryWidgetState extends State<MemoryImageWidget>{
  Uint8List bytes;

  @override
  void initState() {

    super.initState();
//    rootBundle.load()
  }
  @override
  Widget build(BuildContext context) {

    return Container();
  }

}
