import 'package:flutter/material.dart';

class CovidDataGlobal {
  String activePerOneMillion;
  String updated;
  String todayRecovered;
  String testsPerOneMillion;
  String deaths;
  String oneDeathPerPeople;
  String todayCases;
  String tests;
  String criticalPerOneMillion;
  String todayDeaths;
  String recoveredPerOneMillion;
  String critical;
  String oneTestPerPeople;
  String casesPerOneMillion;
  String active;
  String cases;
  String affectedCountries;
  String oneCasePerPeople;
  String deathsPerOneMillion;
  String recovered;
  String population;

  CovidDataGlobal(
      {this.activePerOneMillion,
      this.updated,
      this.todayRecovered,
      this.testsPerOneMillion,
      this.deaths,
      this.oneDeathPerPeople,
      this.todayCases,
      this.tests,
      this.criticalPerOneMillion,
      this.todayDeaths,
      this.recoveredPerOneMillion,
      this.critical,
      this.oneTestPerPeople,
      this.casesPerOneMillion,
      this.active,
      this.cases,
      this.affectedCountries,
      this.oneCasePerPeople,
      this.deathsPerOneMillion,
      this.recovered,
      this.population});

  CovidDataGlobal.fromJson(Map<String, dynamic> json) {
    activePerOneMillion = json['activePerOneMillion'].toString();
    updated = json['updated'].toString();
    todayRecovered = json['todayRecovered'].toString();
    testsPerOneMillion = json['testsPerOneMillion'].toString();
    deaths = json['deaths'].toString();
    oneDeathPerPeople = json['oneDeathPerPeople'].toString();
    todayCases = json['todayCases'].toString();
    tests = json['tests'].toString();
    criticalPerOneMillion = json['criticalPerOneMillion'].toString();
    todayDeaths = json['todayDeaths'].toString();
    recoveredPerOneMillion = json['recoveredPerOneMillion'].toString();
    critical = json['critical'].toString();
    oneTestPerPeople = json['oneTestPerPeople'].toString();
    casesPerOneMillion = json['casesPerOneMillion'].toString();
    active = json['active'].toString();
    cases = json['cases'].toString();
    affectedCountries = json['affectedCountries'].toString();
    oneCasePerPeople = json['oneCasePerPeople'].toString();
    deathsPerOneMillion = json['deathsPerOneMillion'].toString();
    recovered = json['recovered'].toString();
    population = json['population'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activePerOneMillion'] = this.activePerOneMillion;
    data['updated'] = this.updated;
    data['todayRecovered'] = this.todayRecovered;
    data['testsPerOneMillion'] = this.testsPerOneMillion;
    data['deaths'] = this.deaths;
    data['oneDeathPerPeople'] = this.oneDeathPerPeople;
    data['todayCases'] = this.todayCases;
    data['tests'] = this.tests;
    data['criticalPerOneMillion'] = this.criticalPerOneMillion;
    data['todayDeaths'] = this.todayDeaths;
    data['recoveredPerOneMillion'] = this.recoveredPerOneMillion;
    data['critical'] = this.critical;
    data['oneTestPerPeople'] = this.oneTestPerPeople;
    data['casesPerOneMillion'] = this.casesPerOneMillion;
    data['active'] = this.active;
    data['cases'] = this.cases;
    data['affectedCountries'] = this.affectedCountries;
    data['oneCasePerPeople'] = this.oneCasePerPeople;
    data['deathsPerOneMillion'] = this.deathsPerOneMillion;
    data['recovered'] = this.recovered;
    data['population'] = this.population;
    return data;
  }
}
