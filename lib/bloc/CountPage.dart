
import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/CounterBloc.dart';
import 'package:flutter_app/bloc/SecondPage.dart';

void main()=>{
  runApp(new MaterialApp(
    title: "kim_testbloc",
    home: CountPage(),
  ))
};

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

  final _bloc = new CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counterbloc"),),
      body: StreamBuilder(
          stream: _bloc.stream_counter,
          initialData: 0,
          builder: (BuildContext context,AsyncSnapshot<int> snapshot){
            return Center(
              child: Column(
                children: <Widget>[
                  Text(snapshot.data.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),
                RaisedButton(onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>SecondPage()));

                },
                child: Text("kim"),),
                ],
              ),
//              child: Text(snapshot.data.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),

            );
          }),
      floatingActionButton: _getButton(),
    );
  }
  @override
  void dispose() {

    super.dispose();
    _bloc.dispose();
  }

  Widget _getButton(){
    return FloatingActionButton(onPressed: (){
      _bloc.addCount();
    },
    child: Icon(Icons.add),);
  }
}
