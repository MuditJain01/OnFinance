import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import '/app_colors.dart';

class AnalystRatings extends StatefulWidget {
  const AnalystRatings({Key? key}) : super(key: key);

  @override
  State<AnalystRatings> createState() => _AnalystRatingsState();
}

class _AnalystRatingsState extends State<AnalystRatings> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Stack(
        children: [
          HighlightBox(),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Analyst Ratings",style: TextStyle(color: Colors.white),),
                      Icon(Icons.star_border,color: Colors.white,)
                    ],
                  ),
                ),
                const BuyAndSellButtons(),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex:1,
                      child: Column(
                        children: [
                          Text("Strong",style: TextStyle(color: Colors.white,fontSize: 12),textAlign: TextAlign.center,),
                          Text("Buy",style: TextStyle(color: Colors.white,fontSize: 12),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Flexible(flex:1,child: Text("Buy",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),textAlign: TextAlign.center,)),
                    SizedBox(width: 10,),
                    Flexible(flex:1,child: Text("Hold",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),textAlign: TextAlign.center,)),
                    SizedBox(width: 10,),
                    Flexible(flex:1,child: Text("Sell",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),textAlign: TextAlign.center,)),
                    SizedBox(width: 10,),
                    Flexible(
                      flex:1,
                      child: Column(
                        children: [
                          Text("Strong",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),textAlign: TextAlign.center,),
                          Text("Sell",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Dropdown(),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class BuyAndSellButtons extends StatelessWidget {
  const BuyAndSellButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () { },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all<Color>(AppColors.PRIMARY_COLOR),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  )
              ),
              child: const Text("Buy",style: TextStyle(color: Colors.white,fontSize: 12),),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: TextButton(
              onPressed: () { },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                      )
                  )
              ),
              child: const Text("Sell",style: TextStyle(color: Colors.black,fontSize: 12),),
            ),
          ),
        ),
      ],
    );
  }
}

class Dropdown extends StatelessWidget {
  const Dropdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
              child: const Icon(Icons.keyboard_arrow_down,color: AppColors.PRIMARY_COLOR_LIGHT,),
            ),
            expanded: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Divider(
                        thickness: 0.5,
                        color: AppColors.PRIMARY_COLOR_LIGHT,
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Flexible(child: Text("64%",style: TextStyle(fontSize: 30,color: AppColors.ACCENT_COLOR),)),
                          Flexible(child: Text(" Buy rating",style: TextStyle(fontSize: 15,color: AppColors.ACCENT_COLOR)))
                        ],
                      ),
                      SizedBox(height: 15,),
                      const Divider(
                        thickness: 0.5,
                        color: AppColors.PRIMARY_COLOR_LIGHT,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Top Bulls",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                                Text("Historical Accuracy",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/hdfc_logo.jpg'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("HDFC Asset Mngt. Co",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("86%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/solar_logo.jpg'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Solar Industries",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("96%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Text("Top Bears",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/us_logo.jpg'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("United Spirits",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("86%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/home_first_logo.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Home First Finance",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("92%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            // SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ExpandableButton(       // <-- Collapses when tapped on
                    child:const Icon(Icons.keyboard_arrow_up,color: AppColors.PRIMARY_COLOR_LIGHT,)),
                ]
            ),
          ),
        ],
      ),
    );
  }
}

class HighlightBox extends StatelessWidget {
  const HighlightBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 210,
        width: 130,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: AppColors.ACCENT_COLOR
        ),
      ),
    );
  }
}
