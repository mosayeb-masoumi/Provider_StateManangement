import 'package:flutter/cupertino.dart';
import 'package:provider_example/example_server/my_repository.dart';

class ServerProvider extends ChangeNotifier{

  List<String> _list =[];
  List<String> get list => _list;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void getDataFromServer() async{
    _isLoading = true;
    notifyListeners();

    List<String> result = await MyRepository().getData();
    _isLoading = false;
    _list.addAll(result);
    notifyListeners();

  }

}