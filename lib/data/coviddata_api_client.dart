import 'package:covid19_global_flutter/constants/constants.dart';
import 'package:covid19_global_flutter/model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidDataApiClient {
  final http.Client httpClient = http.Client();

  Future<List<CovidData>> getFilteredCovidData() async {
    final covidDataResponse = await httpClient.get(
        Uri.https("cnnturk-coronamap.subservis.com", "/files/countries.json"));

    if (covidDataResponse.statusCode != 200) {
      throw Exception("Covid Data Failed");
    }
    List covidDataResponseJSON = await json.decode(covidDataResponse.body);

    return covidDataResponseJSON
        .map((data) => CovidData.fromJson(data))
        .toList()
        .reversed
        .toList();
  }

  Future<CovidDataGlobal> getTotalCovidData() async {
    final totalCovidDataResponse = await httpClient
        .get(Uri.https("cnnturk-coronamap.subservis.com", "/files/all.json"));

    if (totalCovidDataResponse.statusCode != 200) {
      throw Exception("Total Covid Data Failed");
    }
    final totalCovidDataResponseJSON =
        await json.decode(totalCovidDataResponse.body);
    return CovidDataGlobal.fromJson(totalCovidDataResponseJSON);
  }
}
