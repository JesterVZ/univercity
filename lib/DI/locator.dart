import 'package:get_it/get_it.dart';
import 'package:univercity_application/bloc/main_bloc.dart';
import 'package:univercity_application/http.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerLazySingleton<httpClient>(() => httpClient());
  locator.registerLazySingleton<MainBloc>(() => MainBloc());
}