import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier{

  List<String> _myList = ['Item 1', 'Item 2', 'Item 3'];

  List<String> get myList => _myList;

  void addItem(String newItem) {
    _myList.add(newItem);
    notifyListeners();
  }
}