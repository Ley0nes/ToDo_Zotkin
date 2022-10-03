import 'package:flutter/material.dart';
import 'addbutton_on_home.dart';
import 'spisokdel_on_home.dart';
import 'dropdownbutton_on_home.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Список задач'),
          actions: [DropdownHome()],
      ),
      body: SpisokDel(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AddButton();
          });
        },
        child: const Icon(
          Icons.add_circle,
        ),
      ),
    );
  }
}
