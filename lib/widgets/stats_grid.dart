import 'package:covid19_global_flutter/viewmodel/coviddata_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatsGrid extends StatelessWidget {
  final CovidDataViewModel covidDataViewModel;
  final int filter;

  StatsGrid({this.covidDataViewModel, this.filter}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatCard(
                    "Total Cases",
                    (filter == 0
                        ? formatText(covidDataViewModel.selectedCountry.cases)
                        : formatText(
                            covidDataViewModel.totalCovidData.cases.toString(),
                          )),
                    Colors.orange),
                _buildStatCard(
                    "Deaths",
                    (filter == 0
                        ? formatText(covidDataViewModel.selectedCountry.deaths)
                        : formatText(
                            covidDataViewModel.totalCovidData.deaths.toString(),
                          )),
                    Colors.red),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCard(
                    "Recovered",
                    (filter == 0
                        ? formatText(
                            covidDataViewModel.selectedCountry.recovered)
                        : formatText(
                            covidDataViewModel.totalCovidData.recovered
                                .toString(),
                          )),
                    Colors.green),
                _buildStatCard(
                    "Active",
                    (filter == 0
                        ? formatText(covidDataViewModel.selectedCountry.active)
                        : formatText(
                            covidDataViewModel.totalCovidData.active.toString(),
                          )),
                    Colors.lightBlue),
                _buildStatCard(
                    "Critical",
                    (filter == 0
                        ? formatText(
                            covidDataViewModel.selectedCountry.critical)
                        : formatText(
                            covidDataViewModel.totalCovidData.critical
                                .toString(),
                          )),
                    Colors.purple),
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatText(String text) {
    var formatter = NumberFormat('#,###,000');
    return formatter.format(double.parse(text));
  }
}
