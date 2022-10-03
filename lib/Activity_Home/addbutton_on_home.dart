import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/data.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AlertDialog(
      title: const Text('Запишите задачу'),
      content: TextField(
        onChanged: (String value) =>
          Provider.of<DataClass>(context, listen: false).userAdd = value,
      ),
      actions: [
        ElevatedButton(onPressed: () {
          Provider.of<DataClass>(context, listen: false).addList();
          Navigator.of(context).pop();
        },
      child: const Text('Добавить')),
      ],
    );
  }
}