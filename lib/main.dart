import 'package:covid19_global_flutter/locator.dart';
import 'package:covid19_global_flutter/view/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodel/coviddata_viewmodel.dart';

void main() {
  SetupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 Global App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider.value(
        value: locator<CovidDataViewModel>(),
        child: BottomNavScreen(),
      ),
    );
  }
}
