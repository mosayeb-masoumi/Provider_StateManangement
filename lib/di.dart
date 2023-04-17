
import 'package:get_it/get_it.dart';
import 'package:provider_example/clean_arc_provider/data/data_source/data_source.dart';
import 'package:provider_example/clean_arc_provider/data/repository_impl/data_repository_impl.dart';
import 'package:provider_example/clean_arc_provider/domain/clean_domain/data_domain.dart';
import 'package:provider_example/clean_arc_provider/domain/data_repository/data_repository.dart';
import 'package:provider_example/clean_arc_provider/presentation/clean_provider.dart';
import 'package:provider_example/example_server/my_repository.dart';

final sl = GetIt.instance;
void setUpDI(){

  sl.registerFactory<MyRepository>(() => IMyRepository());


  //clean
  sl.registerLazySingleton<DataSource>(() => IDataSource());
  sl.registerLazySingleton<DataRepository>(() => DataRepositoryImpl(sl()));
  sl.registerLazySingleton<DataDomain>(() => DataDomain(sl()));
  sl.registerLazySingleton<CleanProvider>(() => CleanProvider(sl()));


}