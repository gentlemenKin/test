
import 'dart:math';

import 'package:flutter/material.dart';

void main ()=>runApp(new MaterialApp(


  title: 'list_navigator',
//  home: TodoScreen(new List().add(new Todo('title', 'scribe'))),
home: TodoScreen(mys: Todo.getData(),),

));

class Todo{
  final String title;
  final String describe;
  Todo(this.title,this.describe);

  static List<Todo> getData(){

    var todos = new List();

    todos.add(new Todo("123", "kim1"));
    todos.add(new Todo("456", "kim2"));
    todos.add(new Todo("789", "kim3"));
    todos.add(new Todo("567", "kim4"));
    todos.add(new Todo("234", "kim5"));
    print(todos);
    return todos;
  }
}


class TodoScreen extends StatelessWidget {


  final List<Todo> mys ;


  const TodoScreen({Key key,this.mys}):super(key:key);


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text('Todos'),

      ),
      body: new ListView.builder(itemCount :10,itemBuilder: (BuildContext context,int index){
        return new ListTile(
          title: new Text('mys[index].title'),
          onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=>new DetailScreen())) ;
          },
        );
      }),
    );
  }
}
class DetailScreen extends StatelessWidget {
  final Todo todo;
  const DetailScreen({Key key,this.todo}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('${todo.title}'),

      ),
      body: new Padding(
          padding: EdgeInsets.all(16.0),
        child: new Text(todo.describe),
      ),

    );
  }
}
