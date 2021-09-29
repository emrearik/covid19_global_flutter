// To parse this JSON data, do
//
//     final covidData = covidDataFromJson(jsonString);

import 'dart:convert';

List<CovidData> covidDataFromJson(String str) =>
    List<CovidData>.from(json.decode(str).map((x) => CovidData.fromJson(x)));

String covidDataToJson(List<CovidData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CovidData {
  CovidData({
    this.todayRecovered,
    this.deaths,
    this.todayCases,
    this.tests,
    this.recoveredPerOneMillion,
    this.oneTestPerPeople,
    this.continent,
    this.oneDeathPerPeople,
    this.countryInfo,
    this.critical,
    this.oneCasePerPeople,
    this.recovered,
    this.updated,
    this.todayDeaths,
    this.active,
    this.cases,
    this.deathsPerOneMillion,
    this.casesPerOneMillion,
    this.population,
    this.activePerOneMillion,
    this.testsPerOneMillion,
    this.country,
    this.criticalPerOneMillion,
  });

  String todayRecovered;
  String deaths;
  String todayCases;
  String tests;
  String recoveredPerOneMillion;
  String oneTestPerPeople;
  String continent;
  String oneDeathPerPeople;
  CountryInfo countryInfo;
  String critical;
  String oneCasePerPeople;
  String recovered;
  String updated;
  String todayDeaths;
  String active;
  String cases;
  String deathsPerOneMillion;
  String casesPerOneMillion;
  String population;
  String activePerOneMillion;
  String testsPerOneMillion;
  String country;
  String criticalPerOneMillion;

  factory CovidData.fromJson(Map<String, dynamic> json) => CovidData(
        todayRecovered: json["todayRecovered"].toString(),
        deaths: json["deaths"].toString(),
        todayCases: json["todayCases"].toString(),
        tests: json["tests"].toString(),
        recoveredPerOneMillion: json["recoveredPerOneMillion"].toString(),
        oneTestPerPeople: json["oneTestPerPeople"].toString(),
        continent: json["continent"].toString(),
        oneDeathPerPeople: json["oneDeathPerPerople"].toString(),
        countryInfo: CountryInfo.fromJson(json["countryInfo"]),
        critical: json["critical"].toString(),
        oneCasePerPeople: json["oneCasePerPeople"].toString(),
        recovered: json["recovered"].toString(),
        updated: json["updated"].toString(),
        todayDeaths: json["todayDeaths"].toString(),
        active: json["active"].toString(),
        cases: json["cases"].toString(),
        deathsPerOneMillion: json["deathsPerOneMillion"].toString(),
        casesPerOneMillion: json["casesPerOneMillion"].toString(),
        population: json["population"].toString(),
        activePerOneMillion: json["activePerOneMillion"].toString(),
        testsPerOneMillion: json["testsPerOneMillion"].toString(),
        country: json["country"].toString(),
        criticalPerOneMillion: json["criticalPerOneMillion"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "todayRecovered": todayRecovered,
        "deaths": deaths,
        "todayCases": todayCases,
        "tests": tests,
        "recoveredPerOneMillion": recoveredPerOneMillion,
        "oneTestPerPeople": oneTestPerPeople,
        "continent": continent,
        "oneDeathPerPeople": oneDeathPerPeople,
        "countryInfo": countryInfo.toJson(),
        "critical": critical,
        "oneCasePerPeople": oneCasePerPeople,
        "recovered": recovered,
        "updated": updated,
        "todayDeaths": todayDeaths,
        "active": active,
        "cases": cases,
        "deathsPerOneMillion": deathsPerOneMillion,
        "casesPerOneMillion": casesPerOneMillion,
        "population": population,
        "activePerOneMillion": activePerOneMillion,
        "testsPerOneMillion": testsPerOneMillion,
        "country": country,
        "criticalPerOneMillion": criticalPerOneMillion,
      };
}

class CountryInfo {
  CountryInfo({
    this.flag,
    this.long,
    this.iso3,
    this.iso2,
    this.lat,
    this.id,
  });

  String flag;
  String long;
  String iso3;
  String iso2;
  String lat;
  String id;

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
        flag: json["flag"] != null ? json['flag'].toString() : "",
        long: json['long'] != null ? json['long'].toString() : "",
        iso3: json["iso3"] != null ? json['iso3'].toString() : "",
        iso2: json['iso2'] != null ? json['iso2'].toString() : "",
        lat: json['lat'] != null ? json['lat'].toString() : "",
        id: json['_id'] != null ? json['_id'].toString() : "",
      );

  Map<String, dynamic> toJson() => {
        "flag": flag,
        "long": long,
        "iso3": iso3,
        "iso2": iso2,
        "lat": lat,
        "_id": id,
      };
}
