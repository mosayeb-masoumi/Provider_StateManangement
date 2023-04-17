import 'package:provider_example/clean_arc_provider/domain/data_repository/data_repository.dart';

class DataDomain extends DataRepository{

  final DataRepository _dataRepository;
  DataDomain(this._dataRepository);

  @override
  Future<dynamic> getList() async{
   return _dataRepository.getList();
  }

}