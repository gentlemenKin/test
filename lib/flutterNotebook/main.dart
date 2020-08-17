

import 'package:flutter/material.dart';
import 'package:flutter_app/flutterNotebook/SignUpPage.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'flutter code simple ',
          initialRoute: '/',
          routes: {
            '/':(BuildContext contex) =>HomePage(),
            '/signup':(BuildContext context) =>SignUpPage(),
          },
        );
      }
    }


    class HomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return DefaultTextStyle(
          style: Theme.of(context).textTheme.display1,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/signup');
            },
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text('home page'),
            ),
          ),
        );
      }
    }
