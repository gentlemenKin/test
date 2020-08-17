

import 'package:flutter/material.dart';

void main()=> runApp(MyApp());


 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('listview'),
         ),
         body: ListView.builder(itemCount: 20,
         itemBuilder: (context,index){
           return ListTile(
             leading: Icon(Icons.favorite),
             title:Text('kimi'),
             subtitle: Text('$index最帅'),
              trailing: Icon(Icons.arrow_forward_ios),
           );
         },)
//         ListView(
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.people),
//               title: Text('people'),
//             )
//           ],
         ),
       );

   }
 }
