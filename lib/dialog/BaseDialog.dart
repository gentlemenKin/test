

import 'package:flutter/material.dart';

class BaseDialog extends Dialog{

  final Widget _widget;

  final double height;
  final double width;

  BaseDialog(this._widget,this.height,this.width,{Key key}):super(key:key);


  @override
  Widget build(BuildContext context) {

    return new Center(
      child: Padding(padding: const EdgeInsets.all(12.0)
      ,child: new Material(
          type: MaterialType.transparency,
          child: new Container(
            height: this.height,
            width:  this.width,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),)
              )
            ),
            child: this._widget,
          ),
        ),),
    );
  }
}