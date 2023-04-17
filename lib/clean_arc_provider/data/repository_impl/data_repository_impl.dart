import 'package:provider_example/clean_arc_provider/data/data_source/data_source.dart';
import 'package:provider_example/clean_arc_provider/domain/data_repository/data_repository.dart';

class DataRepositoryImpl extends DataRepository{
  final DataSource _dataSource;
  DataRepositoryImpl(this._dataSource);

  @override
  Future getList() {
    return _dataSource.getList();
  }

}