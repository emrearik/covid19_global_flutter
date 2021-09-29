import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:covid19_global_flutter/config/palette.dart';
import 'package:covid19_global_flutter/config/styles.dart';
import 'package:covid19_global_flutter/data/data.dart';
import 'package:covid19_global_flutter/model/model.dart';
import 'package:covid19_global_flutter/viewmodel/coviddata_viewmodel.dart';
import 'package:covid19_global_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatsScreen extends StatefulWidget {
  final CovidData country;

  const StatsScreen({Key key, this.country}) : super(key: key);
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen>
    with SingleTickerProviderStateMixin {
  CovidDataViewModel covidDataViewModel;
  int filter = 0;
  TabController _regionTabController;

  @override
  void initState() {
    super.initState();
    _regionTabController = TabController(length: 2, vsync: this);
    _regionTabController.addListener(() {
      setState(() {
        filter = _regionTabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    covidDataViewModel = Provider.of<CovidDataViewModel>(context);
    return Scaffold(
        backgroundColor: Palette.primaryColor,
        appBar: CustomAppBar(),
        body: covidDataViewModel.filteredCountriesCovidData.isNotEmpty
            ? CustomScrollView(
                physics: ClampingScrollPhysics(),
                slivers: [
                  _buildHeader(),
                  _buildRegionTabBar(_regionTabController),
                  _buildStatsTabBar(),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    sliver: SliverToBoxAdapter(
                        child: StatsGrid(
                      covidDataViewModel: covidDataViewModel,
                      filter: filter,
                    )),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(top: 20),
                    sliver: SliverToBoxAdapter(
                      child: CovidBarChart(covidCases: covidUsaDailyNewCases),
                    ),
                  ),
                ],
              )
            : Center(child: CircularProgressIndicator()));
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Statistics" +
              " - " +
              (filter == 0
                  ? covidDataViewModel.selectedCountry.country
                  : "Global"),
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildRegionTabBar(TabController controller) {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              controller: controller,
              indicator: BubbleTabIndicator(
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                indicatorHeight: 40,
                indicatorColor: Colors.white,
              ),
              labelStyle: Styles.tabTextStyle,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: [
                Text(
                  "My Country",
                ),
                Text(
                  "Global",
                ),
              ],
              onTap: (index) {
                filter = index;
              },
            )),
      ),
    );
  }

  SliverPadding _buildStatsTabBar() {
    return SliverPadding(
      padding: EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor: Colors.transparent,
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: [
              Text("Total"),
              Text("Today"),
              Text("Yesterday"),
            ],
            onTap: (index) {},
          ),
        ),
      ),
    );
  }
}
