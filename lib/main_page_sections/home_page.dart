import 'package:flutter/material.dart';
import 'package:on_finance/main_page_sections/portfolio_section.dart';

import '/app_colors.dart';
import '/technical_indicators.dart';
import 'about_section.dart';
import 'analyst_ratings_section.dart';
import 'historical_yield_section.dart';
import 'line_page.dart';
import 'candle_page.dart';
import 'dialog.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bookmark = 0;

  void changeBookmark() {
    setState(() {
      bookmark = 1 - bookmark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111115),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              changeBookmark();
            },
            icon: Icon(
                bookmark == 0 ? Icons.bookmark_border : Icons.bookmark_added),
          ),
        ],
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const IntroBar(),
            const ChartSection(),
            const AnalystRatings(),
            const Portfolio(),
            const SizedBox(
              height: 40,
            ),
            const HistoricalYieldSection(),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "About MATIC",
                      style: TextStyle(
                          color: AppColors.PRIMARY_COLOR, fontSize: 18),
                    ),
                  ),
                  const AboutSection(
                      marketCap: 65195,
                      revenue: 789112.84,
                      revenuePercent: -50.2,
                      ratio: 30.2,
                      profit: 1098.48,
                      profitPercent: -80.2,
                      yield: 1.92),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Technical Indicators",
                        style: TextStyle(
                            color: AppColors.PRIMARY_COLOR, fontSize: 18),
                      )),
                  ListView.builder(
                    padding: const EdgeInsets.only(top: 0.0, bottom: 3.0),
                    shrinkWrap: true,
                    itemCount: technicalIndicators.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        visualDensity: VisualDensity.compact,
                        contentPadding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 0.0, bottom: 0.0),
                        minVerticalPadding: 15,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              technicalIndicators[index].heading.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              technicalIndicators[index].value.toString(),
                              style: TextStyle(color: Color(0xFF3FE8CA)),
                            )
                          ],
                        ),
                        subtitle: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              technicalIndicators[index].body.toString(),
                              style: TextStyle(color: Color(0xFF5F5F68)),
                            )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IntroBar extends StatelessWidget {
  const IntroBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        leading: const CircleAvatar(
          foregroundImage: AssetImage('assets/images/matic_logo.jpg'),
        ),
        title: const Text(
          "\u{20B9}94.634",
          style: TextStyle(color: Colors.white),
        ),
        subtitle: const Text(
          "MATIC",
          style: TextStyle(color: AppColors.PRIMARY_COLOR),
        ),
        trailing: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(left: 10, right: 10)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ))),
            child: const Text(
              "Discuss >>",
              style: TextStyle(color: Colors.black, fontSize: 11),
            ),
          ),
        ),
      ),
    );
  }
}

class ChartSection extends StatefulWidget {
  const ChartSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ChartSection> createState() => _ChartSectionState();
}

class _ChartSectionState extends State<ChartSection> {
  int button = 1;
  int graphNumber = 1;
  bool? maValue = false;

  setButton(int i) {
    setState(() {
      button = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 12,),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                color: Color(0xFF111115),
                // width: 300,
                height: 400,
                child: graphNumber == 1 ? LinePage() : CandlePage()),
            // SizedBox(height: 50,)
          ],
        ),
        Positioned(
          top: 362,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                      height: 40,
                      width: 250,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              periodButton(
                                  title: '1H',
                                  onTap: () {
                                    setButton(1);
                                  },
                                  i: 1),
                              periodButton(
                                  title: '1D',
                                  onTap: () {
                                    setButton(2);
                                  },
                                  i: 2),
                              periodButton(
                                  title: '1W',
                                  onTap: () {
                                    setButton(3);
                                  },
                                  i: 3),
                              periodButton(
                                  title: '1M',
                                  onTap: () {
                                    setButton(4);
                                  },
                                  i: 4),
                              periodButton(
                                  title: '5Y',
                                  onTap: () {
                                    setButton(5);
                                  },
                                  i: 5),
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          graphNumber = 1 - graphNumber;
                        });
                      },
                      color: Colors.greenAccent,
                      icon: graphNumber == 1
                          ? Icon(Icons.candlestick_chart)
                          : Icon(Icons.stacked_line_chart),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        graphNumber == 0
            ? Positioned(
                top: 317,
                right: 16,
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: IndicatorsDialog(),
                ),
              )
            : Container(),
        Positioned(
          top: 5,
          left: 16,
          child: Container(
            child: graphNumber==1?Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.stacked_line_chart,color: Colors.green,size: 15,),
                      Text("2.79%",style: TextStyle(color: Colors.green,fontSize: 10),)
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: const BoxDecoration(
                    color: AppColors.METRIC_COLOR,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(child: Text("Ascending angle",style: TextStyle(fontSize: 10,color: Color(0xFF98B5FF)),),),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: const BoxDecoration(
                    color: AppColors.METRIC_COLOR,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(child: Text("High Exposure",style: TextStyle(fontSize: 10,color: Colors.red),),),
                ),
              ],
            ):Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.stacked_line_chart,color: Colors.green,size: 15,),
                      Text("2.79%",style: TextStyle(color: Colors.green,fontSize: 10),)
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: const BoxDecoration(
                    color: AppColors.METRIC_COLOR,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(child: Text("MA",style: TextStyle(fontSize: 10,color: Color(0xFF98B5FF)),),),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: const BoxDecoration(
                    color: AppColors.METRIC_COLOR,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(child: Text("RSI",style: TextStyle(fontSize: 10,color: Color(0xFF98B5FF)),),),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container periodButton(
      {required String title, required VoidCallback onTap, required int i}) {
    return Container(
      height: 25,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
          onPressed: onTap,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  button == i ? AppColors.PRIMARY_COLOR : Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ))),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 10),
          )),
    );
  }
}
