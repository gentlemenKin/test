import 'package:flutter/material.dart';
import 'package:flutter_app/dialog/BaseDialog.dart';


void main()=>runApp(
  new MaterialApp(
    title: '123',
    home:DialogPage() ,
  )
);

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nativeDialog'),

      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(onPressed: (){
            showDialog(context: context,barrierDismissible :false,builder: (BuildContext context){


              return BaseDialog(Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text('自定义dialog',style: TextStyle(fontSize: 18,letterSpacing: 2,color: Theme.of(context).primaryColor),),

                  ),
                  Expanded(child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: Text('hello 自定义dialog'),

                  )),
//                  Container( 
//                    height: 50,
//                    width: double.infinity,
//                    margin: EdgeInsets.only(top: 10),
//
//                  )
                ],
              ), 240, MediaQuery.of(context).size.width *6);
//              return AlertDialog(
//              title: Text('alert dialog'),
//              content: Text("hello"),
//              actions: <Widget>[
//              FlatButton(onPressed:(){ Navigator.of(context).pop(this);}, child: Text("关闭")),
//                FlatButton(onPressed: (){print('这是确定');}, child: Text('确定')),
//            ],
//            shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.all(Radius.circular(20)),
//            ),
//              );
    });
          },child: Text("alertDialg"),),
        ],
      ),
    );
  }
}
