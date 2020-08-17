import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main()=> runApp(
  new MaterialApp(

    title: 'dialog',
    home: DialogPage(),
  )
);

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kim'),
      ),
      body: new Column(
        children: <Widget>[
          RaisedButton(onPressed: (){
            AwesomeDialog(context: context,dialogType: DialogType.INFO,animType: AnimType.BOTTOMSLIDE,title: 'Dialog title',desc:'12345',btnCancelOnPress: (){
              print('cancle');
            },btnOkOnPress: (){
              print('ok');
            }).show();
          },child: Text('模式一'),)
        ],
      ),
    );
  }

  void _showDilog(){


  }
}
