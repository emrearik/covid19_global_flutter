import 'package:covid19_global_flutter/config/config.dart';
import 'package:covid19_global_flutter/widgets/custom_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid19_global_flutter/model/model.dart';
import 'package:covid19_global_flutter/viewmodel/coviddata_viewmodel.dart';
import 'package:flutter/material.dart';

class SymptopmsScreen extends StatefulWidget {
  @override
  _SymptopmsScreenState createState() => _SymptopmsScreenState();
}

class _SymptopmsScreenState extends State<SymptopmsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Palette.primaryColor,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            _symptompsPageWidgetFull("Symptoms of Coronavirus",
                "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat, or diarrhea. These symptoms are usually mild and begin gradually. Also the symptoms may appear 2-14 days after exposure."),
            Container(
              height: screenHeight / 1.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  _symptompsPageLeftWidget(
                    "Fever",
                    "High Fever – this means you feel hot to touch on your chest or back. It is a common sign and also may appear in 2-10 days if you affected.",
                    "assets/images/fever.svg",
                  ),
                  _symptompsPageRightWidget(
                    "Shortness of breath",
                    "Difficulty breathing – Around 1 out of every 6 people who get COVID-19 becomes seriously ill and develops difficulty breathing or shortness of breath.",
                    "assets/images/breath.svg",
                  ),
                  _symptompsPageLeftWidget(
                    "Cough",
                    "Continuous cough – this means coughing a lot for more than an hour, or 3 or more coughing episodes in 24 hours.",
                    "assets/images/cough.svg",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _symptompsPageWidgetFull(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _symptompsPageLeftWidget(
      String title, String subtitle, String svgLink) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              svgLink,
              height: 120,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _symptompsPageRightWidget(
      String title, String subtitle, String svgLink) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              svgLink,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
