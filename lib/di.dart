
import 'package:get_it/get_it.dart';
import 'package:provider_example/example_server/my_repository.dart';

final sl = GetIt.instance;
void setUpDI(){

  sl.registerFactory<MyRepository>(() => IMyRepository());
}