
import 'package:flutter/material.dart';
import 'package:flutter_app/CustomButton.dart';

void main(){
  runApp(FadeTest());
}

class FadeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'fade demo',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new MyFadetest(title: "kim second",),
    );
  }
}


class MyFadetest extends StatefulWidget {

  MyFadetest({Key key,this.title}):super(key:key);
  final String title;


  @override
  _MyFadetestState createState() => _MyFadetestState();
}

class _MyFadetestState extends State<MyFadetest> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    controller = new AnimationController(vsync: this,duration: const Duration(milliseconds: 2000));
    curve = new CurvedAnimation(parent: controller, curve: Curves.bounceIn);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),

      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new CustomButton("heoll")

//            new floatingActionButton: new FloatingActionButton(onPressed: (){
//              controller.forward();
//            },child: new Icon(Icons.brush),
//              tooltip: 'fade',),
          ],
        ),
//        child: new Container(
//          new Column(

          )
//          child: new FadeTransition(opacity: curve,child: FlutterLogo(size: 100.0,),),

//        ),

//      ),

    );
  }
}
