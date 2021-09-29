import 'package:covid19_global_flutter/data/coviddata_repository.dart';
import 'package:covid19_global_flutter/locator.dart';
import 'package:covid19_global_flutter/model/model.dart';
import 'package:flutter/material.dart';

enum CovidState {
  InitialCovidDataState,
  CovidDataLoadingState,
  CovidDataLoadedState,
  CovidDataErrorState,
}

class CovidDataViewModel with ChangeNotifier {
  CovidState _state;
  CovidDataRepository _repository = locator<CovidDataRepository>();
  List<CovidData> _filteredCountriesCovidData;
  CovidDataGlobal _totalCovidData;

  CovidData _selectedCountry;

  CovidDataViewModel() {
    _state = CovidState.InitialCovidDataState;
    _filteredCountriesCovidData = <CovidData>[];
    _totalCovidData = CovidDataGlobal();
    covidDataFilteredCountry();
    covidDataGlobal();
  }
  List<CovidData> get filteredCountriesCovidData => _filteredCountriesCovidData;
  CovidDataGlobal get totalCovidData => _totalCovidData;
  CovidData get selectedCountry => _selectedCountry;
  get state => _state;

  set state(CovidState value) {
    _state = value;
    notifyListeners();
  }

  Future<List<CovidData>> covidDataFilteredCountry() async {
    try {
      state = CovidState.CovidDataLoadingState;
      _filteredCountriesCovidData = await _repository.getFilteredCovidData();
      _selectedCountry = _filteredCountriesCovidData[206];
      state = CovidState.CovidDataLoadedState;
    } catch (e) {
      throw e;
    }
    return _filteredCountriesCovidData;
  }

  Future<CovidDataGlobal> covidDataGlobal() async {
    try {
      state = CovidState.CovidDataLoadingState;
      _totalCovidData = await _repository.getTotalCovidData();
      state = CovidState.CovidDataLoadedState;
    } catch (e) {
      throw e;
    }
    return _totalCovidData;
  }

  void selectedCountryFunction(CovidData selected) {
    _selectedCountry = selected;
    print("selected country:" + selectedCountry.country);
  }
}
