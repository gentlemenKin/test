
import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/CountPage.dart';
import 'package:flutter_app/bloc/CounterBloc.dart';



class SecondPage extends StatelessWidget {
  final _bloc = new CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("secondPage"),),
      body: StreamBuilder(
          stream: _bloc.stream_counter,

          builder: (BuildContext context,AsyncSnapshot<int> snapshot){
            return Center(
              child: Text(snapshot.data.toString(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w300),),
            );

      }),

      floatingActionButton:_getButton() ,
    );
  }
  Widget _getButton(){
    return FloatingActionButton(child: Icon(Icons.add),
    onPressed: (){
      _bloc.addCount();
    },

    );
  }
}
