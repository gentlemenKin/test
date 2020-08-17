
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  final String title;

  MyHomePage({Key key,this.title}):super(key :key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('u have pushed the button this  many times'),
            new Text('$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],

        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: _incrementCounter,tooltip: 'Increment',
      child: new Icon(Icons.add),),
    );
  }


  void _incrementCounter(){
    setState(() {
      _counter ++;
    });
  }
}
