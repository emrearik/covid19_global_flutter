import 'package:covid19_global_flutter/data/coviddata_api_client.dart';
import 'package:covid19_global_flutter/locator.dart';
import 'package:covid19_global_flutter/model/model.dart';

class CovidDataRepository {
  CovidDataApiClient covidApiClient = locator<CovidDataApiClient>();
  List<CovidData> filteredResponse;
  CovidDataGlobal totalResponse;

  Future<List<CovidData>> getFilteredCovidData() async {
    filteredResponse = await covidApiClient.getFilteredCovidData();
    print(
      filteredResponse.indexWhere((element) => element.country == "Turkey"),
    );
    return filteredResponse;
  }

  Future<CovidDataGlobal> getTotalCovidData() async {
    totalResponse = await covidApiClient.getTotalCovidData();
    return totalResponse;
  }
}
