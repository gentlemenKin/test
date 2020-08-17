import 'package:flutter/material.dart';



class CollectPersionlInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.display1,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushReplacementNamed('sign/choose');
        },
        child: Container(
          color: Colors.lightBlue,
          alignment: Alignment.center,
          child: Text('collect person'),
        ),
      ),
    );
  }
}
