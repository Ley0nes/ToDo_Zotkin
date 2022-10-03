import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/data.dart';

class SpisokDel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<DataClass>(context).delaList.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(Provider.of<DataClass>(context).delaList[index]),
          child: Card(
            child: ListTile(
              title: Text(Provider.of<DataClass>(context).delaList[index]),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete_forever,
                  color: Colors.indigo,
                ),
                onPressed: () {
                  Provider.of<DataClass>(context, listen: false).deliteList(index);
                },
              ),
            ),
          ),
          onDismissed: (direction) {
            Provider.of<DataClass>(context, listen: false).deliteList(index);
          },
        );
      },
    );
  }
}