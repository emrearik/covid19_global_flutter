import 'package:covid19_global_flutter/data/coviddata_api_client.dart';
import 'package:covid19_global_flutter/data/coviddata_repository.dart';
import 'package:covid19_global_flutter/viewmodel/coviddata_viewmodel.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void SetupLocator() {
  locator.registerLazySingleton(() => CovidDataApiClient());
  locator.registerLazySingleton(() => CovidDataRepository());
  locator.registerLazySingleton(() => CovidDataViewModel());
}
