import 'package:flutter/material.dart';
import '/my_clipper.dart';
import '/app_colors.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

class HistoricalYieldSection extends StatefulWidget {
  const HistoricalYieldSection({Key? key}) : super(key: key);

  @override
  State<HistoricalYieldSection> createState() => _HistoricalYieldSectionState();
}

class _HistoricalYieldSectionState extends State<HistoricalYieldSection> {
  double investedValue = 100000;
  double yearCount = 1;
  int button = 1;
  String display = "MATIC";

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        const HistoricalYieldContainer(),
        Positioned(
          top: 25,
          left: 0,
          right: 0,
          child: Container(
            height: 325,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 10,right: 10),
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.only(left: 16,top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("If You would have Invested",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("\$${investedValue.round()}",style: TextStyle(color: Colors.white,fontSize: 18),),
                      Slider(
                        value: investedValue,
                        activeColor: AppColors.PRIMARY_COLOR,
                        thumbColor: Colors.white,
                        max: 500000,
                        divisions: null,
                        label: investedValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            investedValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const Text("For Previous",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${yearCount.round()} Year",style: TextStyle(color: Colors.white,fontSize: 18),),
                      Slider(
                        value: yearCount,
                        max: 5,
                        divisions: null,
                        activeColor: AppColors.PRIMARY_COLOR,
                        thumbColor: Colors.white,
                        label: yearCount.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            yearCount = value;
                          });
                        },
                      ),
                    ],
                  ),
                  const Text("You would have",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT),),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 20,),
                      Text("\$1120.78",style: TextStyle(color: Colors.white,fontSize: 18),),
                      SizedBox(width: 10,),
                      Text("1205.67 ${display}",style: TextStyle(color:AppColors.PRIMARY_COLOR,fontSize: 12),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            button = 1;
                            display = "MATIC";
                          });
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 10)),
                            backgroundColor: MaterialStateProperty.all<Color>(button==1?AppColors.PRIMARY_COLOR:Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            )
                        ),
                        child: Row(
                          children: const [
                            CircleAvatar(radius:8,backgroundColor:Colors.white,child: Icon(CryptoFontIcons.BSD,color: Colors.black,size: 12,)),
                            SizedBox(width: 5,),
                            Text("MATIC",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            button = 2;
                            display = "BTC";
                          });
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                            backgroundColor: MaterialStateProperty.all<Color>(button==2?AppColors.PRIMARY_COLOR:Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            )
                        ),
                        child: Row(
                          children: const [
                            CircleAvatar(radius:8,backgroundColor:Colors.white,child: Icon(CryptoFontIcons.BTC,color: Colors.black,size: 12,)),
                            SizedBox(width: 5,),
                            Text("BTC",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            button = 3;
                            display = "ETH";
                          });
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                            backgroundColor: MaterialStateProperty.all<Color>(button==3?AppColors.PRIMARY_COLOR:Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            )
                        ),
                        child: Row(
                          children: const [
                            CircleAvatar(radius:8,backgroundColor:Colors.white,child: Icon(CryptoFontIcons.ETH,color: Colors.black,size: 12,)),
                            SizedBox(width: 5,),
                            Text("ETH",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


class HistoricalYieldContainer extends StatelessWidget {
  const HistoricalYieldContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              height: 325.0,
              decoration: const BoxDecoration(
                color: Color(0xff282831),
              ),
            ),
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 25.0,
                decoration: const BoxDecoration(
                  color: Color(0xff282831),
                ),
              ),
            ),
          ],
        ),
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 25.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Center(
              child: Divider(
                indent: 20.0,
                endIndent: 20.0,
                color: Colors.black,
                thickness: 2.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: -27,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff282831),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'HISTORICAL YIELD',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

