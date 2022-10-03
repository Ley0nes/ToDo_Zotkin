import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DataClass extends ChangeNotifier {

  List delaList = [];

  ////dropdownbutton_on_home
  final items = ['по алфавиту', 'по убыванию', 'по возростанию'];
  String? selectionItem = 'по алфавиту';

  void sortVoid() {
    if (selectionItem == items[0]) {
      delaList.sort();
    }if (selectionItem == items[1]) {
      delaList.sort((a, b) => b.length.compareTo(a.length));
    }
    if (selectionItem == items[2]) {
      delaList.sort((a, b) => a.length.compareTo(b.length));
    }
    notifyListeners();
  }

////addbutton_on_home
  String? userAdd = null;

    void addList() {
      if(userAdd == null){
        Fluttertoast.showToast(msg: 'Задача не введена');
      }else{
        delaList.add(userAdd);
        userAdd = null;
      }
      notifyListeners(); //update() setState()
    }

////spisokdel_on_home
    void deliteList(index) {
      delaList.removeAt(index);
      notifyListeners();
    }
  }