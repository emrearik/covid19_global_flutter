import 'package:covid19_global_flutter/viewmodel/coviddata_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CovidDetails extends StatelessWidget {
  final CovidDataViewModel covidDataViewModel;

  const CovidDetails({Key key, this.covidDataViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "All Statistics",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          covidDataAllStatisticsCountryInfo(
              "Last Update:", covidDataViewModel.selectedCountry.updated),
          covidDataAllStatistics(
              "Today Cases:", covidDataViewModel.selectedCountry.todayCases),
          covidDataAllStatistics(
              "Today Deaths:", covidDataViewModel.selectedCountry.todayDeaths),
          covidDataAllStatistics("Today Recovered:",
              covidDataViewModel.selectedCountry.todayRecovered),
          covidDataAllStatistics(
              "Total Test:", covidDataViewModel.selectedCountry.tests),
          covidDataAllStatistics("Tests Per One Million:",
              covidDataViewModel.selectedCountry.testsPerOneMillion),
          covidDataAllStatistics("Cases Per One Million:",
              covidDataViewModel.selectedCountry.casesPerOneMillion),
          covidDataAllStatistics("Deaths Per One Million:",
              covidDataViewModel.selectedCountry.deathsPerOneMillion),
          covidDataAllStatistics("Recovered Per One Million:",
              covidDataViewModel.selectedCountry.recoveredPerOneMillion),
          covidDataAllStatistics("Active Per One Million:",
              covidDataViewModel.selectedCountry.activePerOneMillion),
          covidDataAllStatistics("Critical Per One Million:",
              covidDataViewModel.selectedCountry.criticalPerOneMillion),
          covidDataAllStatistics("One Test Per People:",
              covidDataViewModel.selectedCountry.oneTestPerPeople),
          covidDataAllStatistics("One Case Per People:",
              covidDataViewModel.selectedCountry.oneCasePerPeople),
        ],
      ),
    );
  }

  Widget covidDataAllStatistics(String statisticName, String statistic) {
    if (statistic != null) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
        child: Row(
          children: [
            Text(
              statisticName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5),
            Text(formatText(statistic)),
          ],
        ),
      );
    } else {
      return Visibility(
        visible: false,
        child: Container(),
      );
    }
  }

  Widget covidDataAllStatisticsCountryInfo(String countryInfo, String info) {
    DateTime date = new DateTime.fromMillisecondsSinceEpoch(int.parse(info));
    final DateFormat formatter = DateFormat('dd/MM/yyyy H:m:s');
    if (info != null) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              countryInfo,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 5),
            Text(
              formatter.format(date),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    } else {
      return Visibility(
        visible: false,
        child: Container(),
      );
    }
  }

  String formatText(String text) {
    var formatter = NumberFormat('#,###,###');
    return formatter.format(double.parse(text));
  }
}
