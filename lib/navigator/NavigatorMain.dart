
import 'package:flutter/material.dart';
import 'package:flutter_app/navigator/FirstScreen.dart';
import 'package:flutter_app/navigator/SecondPage.dart';

void main()=>runApp(NamedRouter.initApp());
class NamedRouter{
  static Map<String,WidgetBuilder> routers;

  static Widget initApp(){
    return MaterialApp(
      initialRoute: '/',
      routes: NamedRouter.routers,
    );
  }

  static initRouters(){
    routers = {
      '/':(context) =>FirstScreen(),
      '/second':(context) =>SecondPage()
    };
    return routers;
  }
}