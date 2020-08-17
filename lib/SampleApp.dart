


import 'package:flutter/material.dart';

void main(){
  runApp(new SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'sample app',
      theme:new ThemeData(
        primarySwatch: Colors.blue,
      ) ,
      home: new SampleAppPage(),
    );
  }
}



class SampleAppPage extends StatefulWidget {
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {

  bool toggle = true;
  void _toggle(){

    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild(){

    if(toggle){
      return new Text('kimi');
    }else{
      return new MaterialButton(onPressed: (){},child: new Text('kimi two'),);
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample app"),

      ),
      body: new Center(
        child: _getToggleChild(),
      ),

      floatingActionButton: new FloatingActionButton(onPressed: _toggle,
      tooltip: 'update',
      child: new Icon(Icons.update),),
    );
  }
}
