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
            _symptompsPageWidgetFull("Prevention of Coronavirus",
                "There is currently no vaccine to prevent Coronavirus (COVID-19. The best way to prevent illness is to avoid being exposed to this virus."),
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
                    "Avoid touching face",
                    "Hands touch many surfaces and can pick up viruses. So, hands can transfer the virus to your eyes, nose, or mouth and can make you sick..",
                    "assets/images/touchFace.svg",
                  ),
                  _symptompsPageRightWidget(
                    "Maintain social distancing",
                    "Maintain at least ~1.8 meters (6 feet) distance between yourself & anyone who is coughing or sneezing.",
                    "assets/images/socialDistance.svg",
                  ),
                  _symptompsPageLeftWidget(
                    "Wash your hands frequently",
                    "Wash your hands frequently Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water for at least 20 seconds.",
                    "assets/images/washHands.svg",
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
