
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first screen'),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.pushNamed(context, '/second');

        },
        child: Text('first page'),),
      ),
    );
  }
}
