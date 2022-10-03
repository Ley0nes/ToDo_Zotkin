import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/data.dart';

class DropdownHome extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  DropdownButton<String>(
      value: Provider.of<DataClass>(context).selectionItem,
      items: Provider.of<DataClass>(context, listen: false).items.map((item)=>
        DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
          ),
        )
      ).toList(),
    onChanged: (item) {
      Provider.of<DataClass>(context, listen: false).selectionItem = item;
      Provider.of<DataClass>(context, listen: false).sortVoid();
    },
    );
  }
}
