import 'package:cached_network_image/cached_network_image.dart';
import 'package:covid19_global_flutter/model/model.dart';
import 'package:covid19_global_flutter/viewmodel/coviddata_viewmodel.dart';
import 'package:flutter/material.dart';

class CountryDropdown extends StatelessWidget {
  final CovidDataViewModel covidDataViewModel;
  final CovidData country;
  final Function(CovidData) onChanged;

  const CountryDropdown(
      {@required this.country,
      @required this.onChanged,
      @required this.covidDataViewModel});
  @override
  Widget build(BuildContext context) {
    return Visibility(
        child: (covidDataViewModel.filteredCountriesCovidData.isNotEmpty)
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<CovidData>(
                    value: covidDataViewModel.selectedCountry,
                    items: covidDataViewModel.filteredCountriesCovidData
                        .map(
                          (e) => DropdownMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: e.countryInfo.flag,
                                  placeholder: (context, url) =>
                                      new CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      new Icon(Icons.error),
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  e.countryInfo.iso2,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                            value: e,
                          ),
                        )
                        .toList(),
                    onChanged: onChanged,
                  ),
                ),
              )
            : CircularProgressIndicator());
  }
}
