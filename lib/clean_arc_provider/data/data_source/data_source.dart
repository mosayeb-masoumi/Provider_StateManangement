import 'package:provider_example/clean_arc_provider/data/data_model/data_model.dart';

abstract class DataSource{
  Future<dynamic> getList();
}

class IDataSource extends DataSource{

  @override
  Future<dynamic> getList() async{
    await Future.delayed(const Duration(seconds: 2));
    List<DataModel> list = [
      DataModel(name: "Ali", age: 25, selected: false),
      DataModel(name: "reza", age: 35, selected: false),
      DataModel(name: "nabi", age: 32, selected: false),
    ];
    return list;
  }

}