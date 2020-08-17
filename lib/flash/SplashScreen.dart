import 'package:flutter/material.dart';
import 'package:flutter_app/flash/MyHomePage.dart';



class SplashScreen extends StatefulWidget {
  @override
  _Splashscreen createState() => _Splashscreen();
}

class _Splashscreen extends State<SplashScreen> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;


  @override
  void initState() {

    super.initState();
    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 2000));
//    _animation = Tween(begin: 0.0,end: 1.0).animate(_controller);
//    _animation = SizeTween(begin: Size(100, 100),end: Size(200,200)).animate(_controller);
//    _animation = ReverseTween(IntTween(begin: 0,end: 200)).animate(_controller);
    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>MyHomePage(title: '123',)), (route) => route ==null);
      }
    });
    _controller.forward();
  }
  @override
  void dispose() {

    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new FadeTransition(opacity: _animation,child: new Icon(Icons.favorite),);
  }
}
