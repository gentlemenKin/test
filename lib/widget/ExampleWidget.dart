
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  Widget buildTextField(TextEditingController controller){

    return TextField(
      controller: controller,
      maxLength: 30,
      maxLines: 1,
      onChanged: (text){
        print('change $text');
      },
      onSubmitted: (text){
        print('submit $text');
      },
      decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,labelText: 'hello',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      
    );
  }

  @override
  Widget build(BuildContext context) {

    final controller = TextEditingController();
    controller.addListener(() { print('input ${controller.text}');});

    return Scaffold(
      appBar: AppBar(title: Text('textField'),),
      body:
      Padding(padding: const EdgeInsets.all(10.0),child: buildTextField(controller),),

    );

  }
}
