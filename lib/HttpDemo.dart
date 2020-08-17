import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'my http',
      theme: new ThemeData(primarySwatch: Colors.red),

      home: new MyHomePage(),
    );
  }
}




class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _ipAddress = "unknown";
  @override
  Widget build(BuildContext context) {
    var spacer = new SizedBox(height: 32.0,);
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('U CURRENT ip is :'),
          new Text('$_ipAddress'),
          spacer,
          new RaisedButton(onPressed: _getIPAddress,child: new Text('get ip address'),)
        ],
      ),
    );
  }

  _getIPAddress() async{
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();
    
    String result;
    
    try{
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if(response.statusCode == HttpStatus.OK){
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['origin'];
      }else{
        result = 'kimi error';
      }
    }
    catch(exception){
      result = 'failed';
    }

    if(!mounted) return;
    setState(() {
      _ipAddress = result;
    });
  }
}
