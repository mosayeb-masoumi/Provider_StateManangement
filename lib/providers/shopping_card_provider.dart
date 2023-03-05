import 'package:flutter/cupertino.dart';

class ShoppingCard with ChangeNotifier{

  List<String> _shoppingCard = ["Apple" , "Orange" ,"Peach"];


  int get lengthOfList => _shoppingCard.length;
  List<String> get cardList => _shoppingCard;

  void addItem(String item){
    cardList.add(item);
    // count=_shoppingCard.length;
    notifyListeners();
  }
}