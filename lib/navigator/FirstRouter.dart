
import 'package:flutter/material.dart';

void main()=>runApp(new MaterialApp(
  title: 'navigator',
  home: FirstRouter(),
));

class FirstRouter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>SecondRouter()));
          
        },
          child: Text('go next page'),
        ),
      ),
    );
  }

}

class SecondRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.pop(context);
        },
        child: Text('go back'),),

      ),
    );
  }
}
