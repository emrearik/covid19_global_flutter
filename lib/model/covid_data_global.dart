import 'package:flutter/material.dart';

class CovidDataGlobal {
  double activePerOneMillion;
  int updated;
  int todayRecovered;
  double testsPerOneMillion;
  int deaths;
  int oneDeathPerPeople;
  int todayCases;
  int tests;
  double criticalPerOneMillion;
  int todayDeaths;
  double recoveredPerOneMillion;
  int critical;
  int oneTestPerPeople;
  int casesPerOneMillion;
  int active;
  int cases;
  int affectedCountries;
  int oneCasePerPeople;
  double deathsPerOneMillion;
  int recovered;
  int population;

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
    activePerOneMillion = json['activePerOneMillion'];
    updated = json['updated'];
    todayRecovered = json['todayRecovered'];
    testsPerOneMillion = json['testsPerOneMillion'];
    deaths = json['deaths'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    todayCases = json['todayCases'];
    tests = json['tests'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    todayDeaths = json['todayDeaths'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    critical = json['critical'];
    oneTestPerPeople = json['oneTestPerPeople'];
    casesPerOneMillion = json['casesPerOneMillion'];
    active = json['active'];
    cases = json['cases'];
    affectedCountries = json['affectedCountries'];
    oneCasePerPeople = json['oneCasePerPeople'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    recovered = json['recovered'];
    population = json['population'];
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
