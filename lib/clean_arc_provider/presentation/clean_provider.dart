import 'package:flutter/cupertino.dart';
import 'package:provider_example/clean_arc_provider/data/data_model/data_model.dart';
import 'package:provider_example/clean_arc_provider/domain/clean_domain/data_domain.dart';

class CleanProvider extends ChangeNotifier{


  final DataDomain _dataDomain;
  CleanProvider(this._dataDomain);

  List<DataModel> _list =[];
  List<DataModel> get list => _list;
  bool isLoading  = false;



  Future<dynamic> getData() async {
    isLoading = true;
    notifyListeners();

    _list = await _dataDomain.getList();
    isLoading = false;
    notifyListeners();
  }

  void changeSelection(int index){

    _list[index].selected = !_list[index].selected;
    notifyListeners();
  }
}